# Анализ полётных логов TermoFly

## Структура данных после полёта

```
/sdcard/xcglobe/igc/
├── 20250706_123456.igc            ← GPS-трек (1 Гц)
└── logs/
    └── tf_log_20250706_123456.zip ← сенсоры + blip-алгоритм (25 Гц)
    └── (внутри: tf_log_20250706_123456.csv)
```

### IGC-трек (1 Гц)

B-записи (стандарт):
```
B123456 5545.123N 03730.456E A 00123 00125  // time, lat, lon, alt_pressure, alt_gnss
```

Полезные поля: время UTC, lat, lon, baro-alt, gnss-alt.

### CSV-лог (25 Гц, 30 колонок)

| Колонка | Тип | Источник | Смысл |
|---------|-----|----------|-------|
| `dtMs` | long | elapsedRealtime | ms от старта лога |
| `accelX/Y/Z` | float | TYPE_ACCELEROMETER (1) | raw accel **с гравитацией**, м/с² |
| `gyroX/Y/Z` | float | TYPE_GYROSCOPE (4) | угловая скорость, рад/с |
| `magX/Y/Z` | float | TYPE_MAGNETIC_FIELD (2) | магнитное поле, μT |
| `pressure` | float | TYPE_PRESSURE (6) | давление, гПа |
| `altitude` | float | processBaro → smoother | высота MSL, м |
| `vario` | float | EMA smoother (g/a) | верт. скорость, м/с |
| `bpX, bpY` | float | Butterworth HP→LP cascade | фильтрованный linear accel X/Y |
| `smoothEnergy` | float | EMA( bpX² + bpY² ) | сглаженная энергия |
| `noiseFloor` | float | калибровка на земле | RMS шума |
| `snr` | float | energy / noiseFloor² | SNR |
| `dominantFreq` | float | ZC-детектор (X+Y оси) | частота в Гц (округлена до 1 знака) |
| `detStatus` | int | updateStatus | 0=SEARCH, 1=SUSPECT, 2=THERMAL, 3=INSIDE |
| `blipAngle` | float | EMA(atan2(bpY, bpX)) | угол блипа (0°=вверх телефона) |
| `blipStrength` | float | computeBlip | 1.0–5.0 |
| `blipDist` | float | computeBlip | 0–100 |
| `blipStatus` | int | l.smali | статус отрисовки |
| `lat, lon` | double | кэш GPS | широта/долгота (6 знаков) |
| `gpsAlt, gpsSpeed, gpsHeading` | float | кэш GPS | высота, скорость, курс |

---

## 1. Синхронизация IGC и CSV

### Проблема

IGC использует **UTC-time** (hhmmss), CSV использует **elapsedRealtime offset** (ms от старта). Надо найти точку привязки.

### Способ 1: через wallStartMs

В `TermoFlyLogger.startLogging()` записывается `wallStartMs = System.currentTimeMillis()`. Если добавить в CSV эту метку (заголовок или отдельный файл), можно пересчитать:

```
utc_ms = wallStartMs + dtMs  // если в одной временной зоне
```

Пока wallStartMs не пишется в CSV — надо будет добавить.

### Способ 2: по пересечению событий (рекомендуется)

1. Найти в CSV **первый момент, когда detStatus >= 2** (blip)
2. Найти в IGC ближайший B-record по времени — **пилот начал крутить термик**
3. Сдвинуть шкалы так, чтобы эти события совпали

### Способ 3: по baro-alt и gnss-alt

1. Взять altitude из CSV и alt из IGC
2. Кросс-корреляция: сдвиг, при котором корреляция максимальна — временна́я привязка

```python
from scipy.signal import correlate
# igc_alt — интерполированный до 25 Гц
# csv_alt — колонка altitude
corr = correlate(csv_alt, igc_alt)
lag = (len(csv_alt) - np.argmax(corr) - 1) / 25.0  # сдвиг в секундах
```

---

## 2. Базовый анализ

### 2.1 Отрисовка лога

```python
import pandas as pd
import matplotlib.pyplot as plt

log = pd.read_csv('tf_log_20250706_123456.csv')
t = log['dtMs'] / 1000  # seconds

fig, axes = plt.subplots(4, 1, figsize=(16, 12), sharex=True)

# 1. Accel
axes[0].plot(t, log['accelX'], label='accelX', alpha=0.7)
axes[0].plot(t, log['accelY'], label='accelY', alpha=0.7)
axes[0].plot(t, log['accelZ'], label='accelZ', alpha=0.7)
axes[0].set_ylabel('Accel (m/s²)')
axes[0].legend()

# 2. Gyro
axes[1].plot(t, log['gyroX'], label='gyroX', alpha=0.7)
axes[1].plot(t, log['gyroY'], label='gyroY', alpha=0.7)
axes[1].plot(t, log['gyroZ'], label='gyroZ', alpha=0.7)
axes[1].set_ylabel('Gyro (rad/s)')
axes[1].legend()

# 3. Filter output + SNR
ax2 = axes[2]
ax2.plot(t, log['bpX'], label='bpX', alpha=0.7)
ax2.plot(t, log['bpY'], label='bpY', alpha=0.7)
ax2.set_ylabel('Bandpass output')
ax2_twin = ax2.twinx()
ax2_twin.plot(t, log['snr'], 'g-', label='SNR', alpha=0.5)
ax2_twin.axhline(y=3.0, color='r', linestyle='--', alpha=0.5, label='SNR threshold=3')
ax2_twin.set_ylabel('SNR')
ax2.legend(loc='upper left')
ax2_twin.legend(loc='upper right')

# 4. DetStatus + blips
axes[3].plot(t, log['detStatus'], 'b-', label='detStatus', drawstyle='steps-post')
blip_on = log[log['detStatus'] >= 2]
axes[3].scatter(blip_on['dtMs']/1000, blip_on['detStatus'], 
                c='orange', s=30, label='Blip confirmed')
axes[3].set_ylabel('Detection Status')
axes[3].set_xlabel('Time (s)')
axes[3].legend()

plt.tight_layout()
plt.savefig('flight_analysis.png', dpi=150)
```

### 2.2 Frequency Analysis

```python
import numpy as np

fs = 25.0  # частота лога

# FFT участка с термиком
thermal_region = log[(log['dtMs'] > thermal_start_ms) & 
                     (log['dtMs'] < thermal_end_ms)]
signal = thermal_region['bpX'].values

fft = np.fft.rfft(signal)
freqs = np.fft.rfftfreq(len(signal), 1/fs)

plt.figure()
plt.plot(freqs, np.abs(fft))
plt.xlim(0, 5)
plt.xlabel('Frequency (Hz)')
plt.ylabel('Magnitude')
# Ожидаемый пик: 0.3–2.0 Гц (турбулентность в термике)
```

---

## 3. Офлайн-валидация алгоритма

### 3.1 Воспроизведение Butterworth

```python
import numpy as np
from scipy import signal as sig

fs = 25.0

# HP 0.25 Гц
sos_hp = sig.butter(2, 0.25, btype='high', fs=fs, output='sos')
# LP 2.5 Гц (или из настройки лога)
sos_lp = sig.butter(2, 2.5, btype='low', fs=fs, output='sos')

# raw accel (type 1, с гравитацией) — для офлайн-теста используем актуальные оси
# Но в логе TYPE_ACCELEROMETER (с гравитацией), а алгоритм использует
# TYPE_LINEAR_ACCELERATION (без гравитации). Разница: надо вычесть gravity.
# На земле: accelZ ≈ 9.81, accelX ≈ 0, accelY ≈ 0
# В полёте: gravity нужно оценивать (можно через комплементарный фильтр с gyro)

# Пока просто подаём bpX/bpY как выход фильтра (для проверки ZC и цепочки)
bpX = log['bpX'].values

# ZC-детектор
zc_count = 0
prev = 0
for i in range(1, len(bpX)):
    if (prev < 0 and bpX[i] >= 0) or (prev >= 0 and bpX[i] < 0):
        zc_count += 1
    prev = bpX[i]

freq_hz = zc_count / (len(bpX) / fs) / 2  # crossings / время / 2 = частота
print(f"ZC частота из лога: {log['dominantFreq'].mean():.1f} Гц")
print(f"ZC частота офлайн:  {freq_hz:.1f} Гц")
# Должны совпадать ±0.1
```

### 3.2 Confirmation Chain

```python
target = 50  # samples (≈ 1 сек при 50 Гц, ≈ 2 сек при 25 Гц)
half = target // 2

confirmed = []
for start in range(0, len(log) - target, 10):  # шаг 10 сэмплов
    window = log.iloc[start : start + target]
    sum1 = window['smoothEnergy'].iloc[:half].mean()
    sum2 = window['smoothEnergy'].iloc[half:].mean()
    if sum2 > sum1 * 1.05:  # порог 1.05
        confirmed.append(start)

print(f"Офлайн подтверждений: {len(confirmed)}")
print(f"В логе blip'ов:       {log['detStatus'].ge(2).sum()}")
```

### 3.3 Подбор порогов

```python
ratios = np.arange(1.01, 1.5, 0.02)
snr_thresholds = np.arange(1.5, 5.0, 0.5)

# Назначить ground truth: участки где пилот крутит (из IGC heading change)
# heading_delta > 30°/5s → circling

best = {'ratio': 0, 'snr': 0, 'f1': 0}
for r in ratios:
    for s in snr_thresholds:
        # Пропустить лог через chain с порогами (r, s)
        # Сравнить с ground truth
        # precision, recall, f1
        f1 = compute_f1(...)
        if f1 > best['f1']:
            best = {'ratio': r, 'snr': s, 'f1': f1}

print(f"Оптимум: ratio={best['ratio']:.2f}, snr={best['snr']:.1f}, F1={best['f1']:.3f}")
```

---

## 4. ML-подход: предиктор термиков

### 4.1 Признаки

Из лога на каждое окно (например, 2 секунды = 50 сэмплов):

| Признак | Расчёт |
|---------|--------|
| RMS accelX | std(accelX) |
| RMS accelY | std(accelY) |
| RMS gyroZ | std(gyroZ) — вращение вокруг вертикали |
| Mean |bpX| + |bpY| | средняя амплитуда bandpass |
| Max SNR | max(snr) |
| Freq stability | std(dominantFreq) — низкая = терм. турбулентность |
| GyroZ mean | mean(gyroZ) — кручение в одну сторону? |
| Accel-gyro cross-corr | corr(accelX, gyroY) — раскачка + вращение |
| Energy growth | gradient(smoothEnergy) за окно |

### 4.2 Target

Ground truth из **IGC**: на каждом 5-секундном отрезке
- **1** — пилот крутит (heading меняется >30°/5с)
- **0** — прямая

### 4.3 Модель

```python
from sklearn.ensemble import RandomForestClassifier

X = window_features  # [samples × features]
y = is_circling      # [samples × 1] из IGC

model = RandomForestClassifier(n_estimators=200, max_depth=6)
model.fit(X, y)

# Feature importance
for name, imp in zip(feature_names, model.feature_importances_):
    print(f"{name}: {imp:.3f}")
# → какие сенсоры и признаки最有 информативны
```

### 4.4 Сравнение с текущим алгоритмом

```python
# Алгоритм: предсказание из detStatus
algo_pred = (log['detStatus'] >= 2).astype(int)

# ML: предсказание
ml_pred = model.predict(X_aligned)

# Сравнение
from sklearn.metrics import classification_report
print("=== Algorithm ===")
print(classification_report(y_true, algo_pred))
print("=== ML ===")
print(classification_report(y_true, ml_pred))
```

---

## 5. Анализ гироскопа для детекции термиков

Гироскоп — потенциально лучший сенсор для термодетекции, чем accel, потому что:

| Сенсор | Что измеряет | Помехи |
|--------|-------------|--------|
| Accel (linear) | ускорение | вибрации крыла, порывы ветра |
| **GyroZ** (raw) | вращение вокруг вертикали | почти нет — крутка крыла в термике |

### Что смотреть

```python
# GyroZ в термике vs прямой
thermal = log[log['detStatus'] >= 2]['gyroZ']
straight = log[log['detStatus'] == 0]['gyroZ']

fig, axes = plt.subplots(2, 1)
axes[0].hist(thermal, bins=50, alpha=0.7, label='Thermal')
axes[0].hist(straight, bins=50, alpha=0.7, label='Straight')
axes[0].set_xlabel('GyroZ (rad/s)')
axes[0].legend()

# Спектрограмма
f, t_spec, Sxx = spectrogram(gyroZ, fs=25)
axes[1].pcolormesh(t_spec, f, 10*np.log10(Sxx), shading='gouraud')
axes[1].set_ylabel('Hz')
```

---

## 6. Пример полного пайплайна

```python
# analyze_flight.py — запуск:
# python analyze_flight.py /sdcard/xcglobe/igc/20250706_123456.igc

import sys, zipfile, os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import igc_lib

igc_path = sys.argv[1]
base = os.path.splitext(igc_path)[0]
zip_path = os.path.join(os.path.dirname(igc_path), 'logs', 
                        os.path.basename(base) + '.zip')

# 1. Распаковать лог
with zipfile.ZipFile(zip_path) as z:
    csv_name = [n for n in z.namelist() if n.endswith('.csv')][0]
    z.extract(csv_name, '/tmp/')
log = pd.read_csv(f'/tmp/{csv_name}')

# 2. Загрузить IGC
flight = igc_lib.Flight(igc_path)

# 3. Синхронизация через время старта
# (wallStartMs нужно добавить в лог — пока костыль)
# Пока: сдвинуть так, чтобы первое кручение совпало с detStatus>=2

# 4. Построить
plot_flight(log, flight)  # см. раздел 2.1

# 5. Офлайн-валидация
run_validation(log, flight)

# 6. Экспорт ML-признаков (опционально)
export_features(log, 'features.npz')
```

---

## Roadmap улучшений

### Сейчас (v0.0.46)
- [x] CSV лог 25 Гц
- [x] Accel (type 1), gyro, mag
- [x] Blip-алгоритм output
- [x] GPS-кэш
- [x] Baro

### Нужно до следующего полёта
- [ ] Писать `wallStartMs` (System.currentTimeMillis) в CSV для точной синхронизации с IGC
- [ ] Писать `lpCutoff` (настройка фильтра) в CSV
- [ ] Писать версию APK в CSV

### Следующие шаги анализа
- [ ] Написать `analyze_flight.py` (раздел 6)
- [ ] Прогнать на 3-5 полётных логах
- [ ] Сравнить detStatus с actual circling из IGC
- [ ] Подобрать оптимальные ratio/snr threshold (раздел 3.3)
- [ ] Попробовать ML-модель на гироскопе (раздел 5)
