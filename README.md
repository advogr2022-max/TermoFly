# TermoFly

TermoFly — paragliding flight computer APK. Rebrand of FlyMe 3.12 Beta with XCTrack IGC support.

## Features

- GPS flight recording and playback
- IGC file parsing with XCTrack format support (`HFDTEDATE:` → `HFDTE` auto-fix)
- ScorerTask for flight analysis (kmmax calculation)
- Simulation mode for track replay

## Build

```bash
cd c:\t4
source env.sh
./build.sh
```

## Project Structure

```
c:\t4\
├── input/          # Original APK
├── decoded/        # apktool d output (smali + res)
│   ├── smali/      # Patched smali code
│   ├── res/        # Resources (11 locales)
│   └── AndroidManifest.xml
├── env.sh          # Environment setup
├── build.sh        # Build script
└── keystore/       # Debug signing key
```

## XCTrack IGC Fix

XCTrack records use `HFDTEDATE:DDMMYY,SS` instead of standard IGC `HFDTEDDMMYY`. 
The parser in `decoded/smali/i/c.smali` automatically converts this on-the-fly.

## Versions

- v0.0.5 — XCTrack IGC date fix (CRC32 bypass fix)
- v0.0.4 — IGC parser with HFDTEDATE→HFDTE conversion
- v0.0.3 — XCTrack IGC parser fix attempt
- v0.0.2 — Rebrand + debug mode
- v0.0.1 — Initial rebrand FlyMe → TermoFly
