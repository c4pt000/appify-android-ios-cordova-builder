java8-switch-on
echo "requires build-tools 31.0.0"
echo 'sdkmanager "build-tools;31.0.0"'
echo ""
echo ""
echo ""
echo "this is a HTTPS build script if your site in www/index.html is HTTP hit crtl-C to cancel script will pause for 5 seconds"
sleep 5s
cp -rf ./platforms/android/app/src/main/AndroidManifest.https.xml ./platforms/android/app/src/main/AndroidManifest.xml

echo ' for problems where a file in the 31.0.0 build-tools might get corrupt with this script 

replace /root/Android/Sdk
with your actual location of Android-SDK

mv /root/Android/Sdk/build-tools/31.0.0/d8 /root/Android/Sdk/build-tools/31.0.0/dx
mv /root/Android/Sdk/build-tools/31.0.0/lib/d8.jar /root/Android/Sdk/build-tools/31.0.0/lib/dx.jar
'
sleep 10s
 cordova plugin add cordova-plugin-inappbrowser
npm install
export GRADLE_OPTS="-Dorg.gradle.parallel=true -Dorg.gradle.workers.max=8 -Dorg.gradle.daemon=true -Dorg.gradle.configureondemand=true"
cordova build android --verbose
cp -rf /opt/appify-android-ios-cordova-builder/platforms/android/app/build/outputs/apk/debug/app-debug.apk .
echo "your app is installable as app-debug.apk"

