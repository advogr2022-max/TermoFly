#!/usr/bin/env bash
# Build script for TermoFly APK
# Usage: ./build.sh [new_version_name]
# Example: ./build.sh "0.0.2 beta"

set -euo pipefail

cd "$(dirname "$0")"
source env.sh

# Current version from apktool.yml
CUR_VER_NAME=$(grep versionName decoded/apktool.yml | sed 's/.*versionName: //')
CUR_VER_CODE=$(grep versionCode decoded/apktool.yml | sed 's/.*versionCode: //')
NEW_VER_CODE=$((CUR_VER_CODE + 1))

# If new version name provided, update
if [ $# -ge 1 ]; then
    NEW_VER_NAME="$1"
    sed -i "s/versionName: .*/versionName: $NEW_VER_NAME/" decoded/apktool.yml
    sed -i "s/versionCode: .*/versionCode: $NEW_VER_CODE/" decoded/apktool.yml
    echo "Version bumped: $CUR_VER_NAME ($CUR_VER_CODE) -> $NEW_VER_NAME ($NEW_VER_CODE)"
else
    NEW_VER_NAME="$CUR_VER_NAME"
    echo "Version: $CUR_VER_NAME ($CUR_VER_CODE)"
fi

SAFE_NAME=$(echo "$NEW_VER_NAME" | sed 's/ /_/g')
APK_NAME="build/TermoFly_v${SAFE_NAME}.apk"
APK_UNSIGNED="build/termofly_unsigned.apk"
APK_ALIGNED="build/termofly_aligned.apk"

echo "=== Build ==="
java -jar "$APKTOOL_JAR" b decoded -o "$APK_UNSIGNED" 2>&1 | tail -3

echo "=== zipalign ==="
"$BUILD_TOOLS/zipalign" -f -v 4 "$APK_UNSIGNED" "$APK_ALIGNED" 2>&1 | tail -2

echo "=== Sign ==="
cmd //c "c:\t4\android-sdk\build-tools\34.0.0\apksigner.bat sign --ks c:\t4\keystore\debug.keystore --ks-key-alias devkey --ks-pass pass:android --key-pass pass:android --out c:\t4\$APK_NAME c:\t4\$APK_ALIGNED"

echo "=== Verify ==="
cmd //c "c:\t4\android-sdk\build-tools\34.0.0\apksigner.bat verify --verbose c:\t4\$APK_NAME" 2>&1 | grep "Verifies\|Verified"

echo "=== Done ==="
ls -la "$APK_NAME"
aapt2 dump badging "$APK_NAME" 2>/dev/null | grep "package:" || true
