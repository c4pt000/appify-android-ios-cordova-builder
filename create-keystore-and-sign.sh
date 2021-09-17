echo "requires running java11 from cordova project folder root where platforms is in ls -l"
echo ' 
yum install nodejs -y
npm -g install randomstring'
randomstring
rm -rf my-release-key.jks
keytool -genkey -v -keystore my-release-key.jks -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
cp -rf ./platforms/android/app/build/outputs/apk/debug/app-debug.apk .
echo "replace this line for /home/Android/Sdk where your android/android-sdk command line sdk is"
/home/Android/Sdk/build-tools/29.0.3/apksigner sign --ks my-release-key.jks --out website-app-Android-signed.apk app-debug.apk
 
