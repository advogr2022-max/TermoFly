#!/usr/bin/env bash
# Environment variables for APK modification project
export JAVA_HOME="/c/t4/jdk/jdk-17.0.19+10"
export ANDROID_HOME="/c/t4/android-sdk"
export BUILD_TOOLS="$ANDROID_HOME/build-tools/34.0.0"
export PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export ADB_HOME="/c/adb"
export APKSIGNER="$BUILD_TOOLS/apksigner.bat"
export PATH="$JAVA_HOME/bin:$BUILD_TOOLS:$PLATFORM_TOOLS:$ADB_HOME:/c/t4/jadx/bin:$PATH"
export APKTOOL_JAR="/c/t4/apktool.jar"

echo "=== Environment ==="
echo "JAVA_HOME=$JAVA_HOME"
java -version 2>&1 | head -1
echo "Build tools: $(ls $BUILD_TOOLS/zipalign.exe 2>/dev/null && echo OK || echo MISSING)"
echo "apksigner: $(ls $BUILD_TOOLS/apksigner.jar 2>/dev/null && echo OK || echo MISSING)"
echo "adb: $(ls $ADB_HOME/adb.exe 2>/dev/null && echo OK || echo MISSING)"
echo "apktool: $(ls $APKTOOL_JAR 2>/dev/null && echo OK || echo MISSING)"
echo "jadx: $(ls /c/t4/jadx/bin/jadx.bat 2>/dev/null && echo OK || echo MISSING)"
echo "================================"
