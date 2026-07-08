# Signal Processing Chain Bug Report — TermoFly v0.0.40
## Samsung A8+: no blips, no voice prompts, freq <10 Hz

---

## 🚨 CRITICAL BUG #1: confirmTarget initialized to 1,065,353,216

**File:** `m/a.smali` line 611
**Code:** `sput v0, Lm/a;->confirmTarget:I` where v0 = 0x3f800000 (= 1.0f as float)
**Bug:** `confirmTarget` is an `int` field, but the value is set using a float constant `0x3f800000`. The raw bit pattern stored is 1,065,353,216 instead of the intended `50`.
**Impact:** The confirmation window needs ~1 billion sensor events (~247 days at 50Hz) before a blip is confirmed. **Blips can NEVER appear.**
**Fix needed:** `const/16 v0, 0x32` (50) for confirmTarget, or use the initial default from field declaration.

---

## 🚨 CRITICAL BUG #2: drawBlips — blipEnabled guard is inverted

**File:** `RingPainter.smali` line 760
**Code:** `if-nez v0, :skip` where v0 = blipEnabled
**Bug:** `if-nez` = branch if v0 != 0. When `blipEnabled == true`, the draw function **skips** all blip rendering. Should be `if-eqz` (skip if DISABLED).
**Impact:** Even when blip is confirmed and all data is set, nothing renders on screen.

---

## 🚨 CRITICAL BUG #3: enable_blip loaded with default false in RingPainter

**File:** `RingPainter.smali` line 580-586
**Code:** `getBoolean("enable_blip", 0)` → default `false`
**Bug:** XML preference declares `android:defaultValue="true"`, but the code reads with default `false`. If user never opens Extender settings, `blipEnabled` stays `false`.
**Impact:** Sensor registration may not start (depending on path). Same issue for `blip_demo` (line 568-577: default `false` vs XML `true`).

---

## 🚨 CRITICAL BUG #4: blipAngle reset to 0.0 instead of -1.0 on SNR fail

**File:** `m/a$a.smali` line 477
**Code:** `sput v2, Lcom/xcglobe/xclog/l;->blipAngle:F` where v2 = 0
**Bug:** In `updateEnergy()`, when SNR drops below 3.0, `blipAngle` is reset to **0.0** instead of **-1.0** (the "no blip" sentinel). The intended sentinel is -1.0 (used in drawBlips and other reset paths).
**Impact:** After a blip expires, blipAngle=0.0 doesn't match the -1.0 sentinel, and drawBlips reads stale data until timer expiry.

---

## 🔴 BUG #5: Noise floor lower clamp is inverted

**File:** `m/a$a.smali` lines 443-448
```smali
    cmpg-float v2, v11, v12    # cmp(noiseFloor, 0.0001)
    if-ltz v2, :nf1            # if noiseFloor < 0.0001 → skip
    move v11, v12              # noiseFloor >= 0.0001 → FORCED TO 0.0001 (WRONG!)
```
**Bug:** When noise floor rises **above** 0.0001, it gets forced DOWN to 0.0001. The intent was to clamp when noise floor is **below** 0.0001.
**Impact:** Noise floor can never rise above 0.0001, which is unrealistically low. The SNR denominator becomes tiny → detector becomes hypersensitive to noise.

---

## 🔴 BUG #6: Noise floor overwritten to 0.002 when non-zero

**File:** `m/a$a.smali` lines 456-461
```smali
    cmpl-float v12, v10, v11   # cmp(noiseFloor, 0)
    if-eqz v12, :nf_nz         # if noiseFloor == 0 → skip
    const v10, 0x3b03126f      # noiseFloor != 0 → OVERWRITE to 0.002
```
**Bug:** The intent was "if noiseFloor IS zero, use 0.002 as fallback to prevent division by zero". But the condition is inverted: when noiseFloor != 0, it gets replaced by 0.002.
**Impact:** The noise floor tracking is effectively disabled. SNR always uses 0.002² = 4e-6 as denominator, making the adaptive noise floor meaningless.

---

## 🔴 BUG #7: `b()` sensor registration — blipDebug blocks normal path

**File:** `m/a.smali` lines 186-197
```smali
    sget-boolean v0, Lcom/xcglobe/xclog/l;->blipDebug:Z
    if-eqz v0, :try_register   # if blipDebug == 0 → try_register (I.e. when blipDebug is FALSE → register)
    sget-boolean v0, L;->I:Z   # use_barometer
    if-nez v0, :try_register   # if use_barometer != 0 → try_register
    invoke-static {}, Lm/a;->e()V  # release and exit
```
**Bug:** `if-eqz` branches when value == 0. So `blipDebug == false` → register. But `blipDebug == true` → falls through to `use_barometer` check. 
However, `if-nez` branches when value != 0. So `use_barometer == true` → register.
**Net effect:** `blipDebug=true` and `use_barometer=false` → **registration is blocked** and sensors released. The comment says "blipDebug override — force register" but it does the opposite.

---

## 🟡 BUG #8: `startThermalOnly()` guard is inverted for blipDebug

**File:** `m/a.smali` lines 403-416
```smali
    if-nez v0, :do_register     # if blipEnabled != 0 (true) → register
    if-eqz v0, :do_register     # if blipDebug == 0 (false) → register
    return-void                 # blipEnabled=false AND blipDebug=true → NO REGISTER
```
**Bug:** When `blipEnabled=false` and `blipDebug=true`, registration is blocked. The intent is that `blipDebug=true` should **force** registration regardless.
**Impact:** On devices where blipEnabled pref hasn't been set (default=false from RingPainter bug), having blipDebug=true prevents sensor registration.

---

## 🟡 BUG #9: `bAccel()` and `startThermalOnly()` call sites are ALL commented out

**File:** `App.smali` lines 1712-1714, `RingPainter.smali` line 607
```smali
    # invoke-static {}, Lm/a;->bAccel()V
    # invoke-static {}, Lm/a;->startThermalOnly()V
```
**Bug:** These calls exist only as comments. `bAccel()` is the independent accelerometer registration path. Neither starts automatically at App startup.
**Impact:** No independent accelerometer-only registration path at startup. The only registration happens via `b()`, which depends on `use_barometer` and `blipDebug` gates.

---

## 🟡 BUG #10: `extender` preference changes don't trigger re-registration

**File:** `App.smali` — `onSharedPreferenceChanged` method
**Bug:** The preference handler handles keys: "datasources", "display", "vario", "advanced", "glider", "power", "livetrack". But NOT "extender" (the category that contains enable_blip, blip_debug, voice_enabled, blip_demo, lp_cutoff).
**Impact:** When user changes blip/lp settings, no preference listener fires to re-read or re-apply. Only RingPainter's drawDebugBox reads these at render time.

---

## 🔵 BUG #11: HP filter output delays not initialized

**File:** `m/a$a.smali` quick-start section (lines 97-103)
**Bug:** The quick-start initializes `bq_hx1`, `bq_hx2` (input history) to first raw values, but does NOT initialize `bq_hy1`, `bq_hy2` (output history). They remain 0 from field initialization.
**Impact:** First few HP filter outputs are inaccurate. Minor — filter converges after ~5 events.

---

## 🔵 BUG #12: LP filter has no quick-start initialization

**File:** `m/a$a.smali` line 180-216
**Bug:** Unlike the HP filter, the LP filter state (`bq_lx1`, `bq_lx2`, `bq_ly1`, `bq_ly2`) is never initialized and stays at 0 from class field defaults.
**Impact:** LP filter takes longer to converge. Minor.
