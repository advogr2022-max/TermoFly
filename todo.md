# TermoFly — TODO

## 1. Компас: сектора выглядят по-разному — ИСПРАВЛЕНО

**Фикс:** `STROKE` → `FILL`, `useCenter=false` → `true`.

**Файл:** `decoded/smali/display/vmap/features/RingPainter.smali`
- Строка 113: `sget-object v1, Landroid/graphics/Paint$Style;->FILL`
- Строки 366, 384, 394, 410: `const/4 v4, 0x1` (useCenter=true)

---

## 2. Butterworth bandpass — ИСПРАВЛЕНО

**Установлен** в `processAccel` (a$a.smali) каскад HP 0.25 Гц + LP 2.5 Гц, biquad 2-го порядка.
Коэффициенты — из ThermalRadar (isemaster). Anti-windup clamp ±100g.
**Поля состояния:** 16 float полей в m/a.smali (bq_hx1..ly2, bq_hx1y..ly2y)

---

## 3. Частота 0.25 Гц — ИСПРАВЛЕНО

**Было:** `updateFreq` не обновлял `dominantFreq` при `zcCount = 0` (проверка `if-lez`). После одного crossing оставалось 0.25 навсегда.

**Фиксы (v0.0.31):**
1. Убрана проверка `if-lez zcCount, :sk0` — `dominantFreq` обновляется всегда
2. Добавлен neg→pos zero crossing (был только pos→neg)

|**Проверить на Samsung A8+:** частота должна меняться при тряске.

---

## 5. v0.0.34 — Исправление регистрации сенсора + code review

**Коренной баг:** в `m/a.smali:277` инвертированная логика — регистрировался TYPE_ACCELEROMETER (type 1) вместо TYPE_LINEAR_ACCELERATION (type 10). onSensorChanged принимает только type 10 → processAccel никогда не вызывался.

**Патчи:**
1. **m/a.smali:277** — `if-nez` → `if-eqz` + `goto :do_register_accel`. Когда type 10 найден — сразу регистрируем его. Fallback на type 1 только когда type 10 недоступен.
2. **C1 — `if-nez` → `if-eqz`** в `RingPainter.smali:772`
3. **C4 — ZC detection** в `a$a.smali:246-268` — оба направления, без фантомного инкремента
4. **90° offset** в `a$a.smali:472-475` — `atan2(bpX, bpY)` вместо `atan2(bpY, bpX)`
5. **SNR формула** в `a$a.smali:371-372` — `noiseFloor²`

---

## Команды сборки

```bash
export JAVA_HOME=/c/tools/jdk-17.0.12+7
export PATH="$JAVA_HOME/bin:$PATH"
cd /d/t4
java -jar /c/t4/apktool.jar b decoded -o build/TermoFly_v0.0.XX_unsigned.apk

# Подпись
wsl.exe bash << 'SCRIPT'
z=/home/user/Android/Sdk/build-tools/34.0.0
cd /mnt/d/t4
$z/zipalign -f 4 build/TermoFly_v0.0.XX_unsigned.apk build/TermoFly_v0.0.XX_aligned.apk
$z/apksigner sign --ks /mnt/c/t4/keystore/debug.keystore --ks-key-alias devkey \
  --ks-pass pass:android --key-pass pass:android \
  --out build/TermoFly_v0.0.XX.apk build/TermoFly_v0.0.XX_aligned.apk
SCRIPT

# Установка
adb -s emulator-5554 install -r D:\t4\build\TermoFly_v0.0.XX.apk
```

---

## Тестирование

```bash
adb -s emulator-5554 logcat -c
adb -s emulator-5554 shell am start -n com.xcglobe.termofly/com.xcglobe.xclog.ActivityMain
sleep 10
adb -s emulator-5554 logcat -d -s AndroidRuntime:E
adb -s emulator-5554 shell dumpsys sensorservice | grep -A5 "m.a"
```

---

## GitHub release

```bash
cd /d/t4
git add -A && git commit -m "v0.0.XX: message"
git tag v0.0.XX
git push origin v0.0.XX
git push origin HEAD:main
# токен: git credential fill (protocol=https, host=github.com)
```

---

## 4. Блипы относительно телефона (независимо от компаса/GPS)

**Концепция:**
- Верхний край телефона = направление полёта (всегда вперёд)
- Телефон наклонён ~45° к лицу пилота (типичное крепление на груди)
- Все микроколебания акселерометра пересчитываются относительно этого положения
- Оси телефона: X (вправо), Y (вверх), Z (на себя/от себя)
- После пересчёта горизонтальная раскачка = проекция на горизонтальную плоскость

**Что надо сделать:**

1. **Определить ориентацию телефона** через `SensorManager.getRotationMatrix()` + `getOrientation()` (акселерометр + магнитометр) или через TYPE_GAME_ROTATION_VECTOR
   - Получить углы Эйлера: azimuth (рыскание), pitch (тангаж), roll (крен)
   - Скомпенсировать наклон 45°: повернуть оси акселерометра в горизонтальную плоскость

2. **Пересчитать bpX/bpY в горизонтальные компоненты:**
   - Известен pitch (наклон вперёд) и roll (крен влево-вправо)
   - Горизонтальная X = ax × cos(pitch) + az × sin(pitch)  (поперечная)
   - Горизонтальная Y = ay (продольная, вдоль полёта)
   - Или через полную матрицу поворота

3. **Направление блипа:**
   - atan2(bpY_гориз, bpX_гориз) = направление раскачки
   - 0° = строго вперёд (по курсу полёта)
   - ±90° = вправо/влево
   - 180° = назад
   - Блип рисуется на компасе по этому углу, а не по магнитному азимуту

4. **Независимость:**
   - Не требует GPS, магнитного компаса, вариометра, трек-лога
   - Работает исключительно от LINEAR_ACCELERATION (type 10)
   - Для ориентации — GAME_ROTATION_VECTOR (type 15) или акселерометр+магнитометр

**Файлы:**
- `decoded/smali/m/a$a.smali` — processAccel: добавить вызов getRotationMatrix перед фильтрацией
- `decoded/smali/display/vmap/features/RingPainter.smali` — drawBlips: угол блипа уже рисуется относительно heading, но heading должен быть orientation телефона, не магнитный

**Примечание:** текущая реализация `RingPainter` уже рисует blipAngle относительно heading (строки ~796-800). Проблема в том, что heading берётся из `m/g.m:I` (магнитный курс от GPS/компаса). Нужно заменить на угол направления телефона, полученный из ориентации.
