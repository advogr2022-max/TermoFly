# TermoFly — TODO

## v0.0.36 — Подключение алгоритма блипов (ИСПОЛНЯЕТСЯ)

**Что сделано:**
1. **Удалён TEMP bypass** в `updateStatus` (a$a.smali:543-554) — больше не ставит strength=1, distance=1 напрямую
2. **Исправлен confirmation check** (строка 640): `if-ltz :ic1` → `if-ltz :cr1` — теперь avg2≥1.2×avg1 → подтверждено, avg2≤0.8×avg1 → отклонено
3. **aboveThresh 5→25** — стабилизация направления 0.5 с (было 0.1 с)
4. **confirmTarget clamp исправлен** — диапазон [25, 250] сэмплов (было [5, ∞) из-за бага if-gt)
5. **Удалён TEST single blip** из drawBlips
6. **Удалён blipDemo** (C6) — больше не затирает реальные blipAngle/Strength/Distance/Time
7. **Очищены временные файлы** m/a.txt, m/a_temp.txt, patch_*.py

**Проверено на LDPlayer:**
- APK v0.0.36 собран, подписан, установлен
- VerifyError: 0
- FATAL errors: 0
- ActivityMain: +942ms (чистый запуск)

**Осталось:**
- [ ] Проверить debug infobox на LDPlayer (растут smoothEnergy/SNR при shake)
- [ ] Протестировать на Samsung A8+ — появление блипов при раскачке телефона
- [ ] Проверить жизнеспособность confirmation chain на реальном устройстве

---

## Предыдущие версии

### v0.0.35 — N1-N5 фиксы + freq fallback + dual-axis ZC
- N1: ZC по Y (prevBpY) — продольная раскачка даёт freq≠0.25
- N2: Пороги updateStatus в noiseFloor² (не noiseFloor)
- N3: confirmTarget max 250→50 (для LDPlayer теста)
- N4: confirmation bypass для теста отрисовки
- N5: blipDemo=false по умолчанию
- Freq fallback при ZC=0 (smoothEnergy×100)
- Freq rounding до 1 десятичного знака

### v0.0.34 — Регистрация сенсора + code review P0
- C7: TYPE_LINEAR_ACCELERATION (if-nez → if-eqz)
- C1: Инвертированное сравнение blipAngle (if-nez → if-eqz)
- C4: ZC оба направления, без фантомных инкрементов
- 90° offset atan2(bpX, bpY)
- SNR: noiseFloor²

### v0.0.33 — ZC-фикс
- Оба направления ZC (только X)
- Frequency freeze fix

---

## Команды сборки

```bash
export JAVA_HOME=/c/tools/jdk-17.0.12+7
export PATH="$JAVA_HOME/bin:$PATH"
cd /d/t4
rm -f build/*.apk
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
/c/Users/user/AppData/Local/Temp/platform-tools/platform-tools/adb.exe -s emulator-5554 install -r "D:\\t4\\build\\TermoFly_v0.0.XX.apk"
```

## Тестирование

```bash
/c/Users/user/AppData/Local/Temp/platform-tools/platform-tools/adb.exe -s emulator-5554 logcat -c
/c/Users/user/AppData/Local/Temp/platform-tools/platform-tools/adb.exe -s emulator-5554 shell am start -n com.xcglobe.termofly/com.xcglobe.xclog.ActivityMain
sleep 10
/c/Users/user/AppData/Local/Temp/platform-tools/platform-tools/adb.exe -s emulator-5554 logcat -d | grep -E "VerifyError|FATAL|AndroidRuntime" | grep termofly
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
