# Appify
Turn any website into a native app in seconds! For use with npm and cordova.
# requires java11 and java8 , nodejs , npm
* for ubuntu/debian based java8 and java11 fast switching bash scripts
```
https://github.com/c4pt000/Aqua-Term/blob/master/java11-switch-on-ubuntu
https://github.com/c4pt000/Aqua-Term/blob/master/java8-switch-on-ubuntu
```
##Demo with iPad
![Demo](Demo.gif)
requires java8 for cordova to build apk, java11 to sign see create-apk-sign.sh file 
## Setup
```bash
$ npm install -g cordova randomstring ionic cordova-res
$ npm install -g cordova-res --unsafe-perm=true --allow-root

start this entire process using JAVA 8

ionic start

"choose project name"
"choose angular"
"choose blank"

cd to "project name"

ionic cordova platform add android
ionic cordova plugin add cordova-plugin-inappbrowser

(optional) ionic cordova platform add ios
cd platforms/android
nano app/src/main/res/xml/config.xml (line 30 name of app)
nano nano app/src/main/res/values/strings.xml (line 3 name of app)
cd platform_www
wget https://github.com/c4pt000/appify-android-ios-cordova-builder/releases/download/www/www.cordova.tar.gz
tar -xvf www.cordova.tar.gz
mv www/* .
rm -rf www.cordova.tar.gz
rm -rf www
nano index.html 

change the following url in www/index.html
 
 var WEBSITE_URL = 'https://exbitron.com';
 
 to https://your-website-to-appify.com
 
 cd ../../..
 
  ionic cordova resources android --force
  
  ionic cordova build --prod
  ```
    
  <br>
  <br>
  <br>
  ```
  switch to JAVA 11 for apk signing
  
  # sign built apk
java11-switch-on

# sign app-debug.apk to a signed apk for publishing
sh create-keystore-and-sign.sh

ls -l

run the /usr/bin/EMULATOR below

adb install website-app-Android-signed.apk

optional (for debugging)
adb shell
adb logcat
```
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>

  <br>
  
 
 
 # other notes / notices about PATH and building environment
where /home/Android/Sdk is the path to your android/android-sdk command line tools
export ANDROID_SDK_ROOT=/home/Android/Sdk

* macOS only requires ** Xcode




  * Watch your app come to life!

# for emulator building etc examples






notes for myself a gist I forked for android emulator 
https://gist.github.com/c4pt000/b0a362b83823e3a89ad8aaddcbdcbfe7

```
where /opt/android/android-sdk is path to CLI android-sdk
 export PATH=$PATH:/opt/android/android-sdk/tools/bin

 export ANDROID_SDK_ROOT=/opt/android/android-sdk
 export ANDROID_HOME=/opt/android/android-sdk

sdkmanager --sdk_root=${ANDROID_HOME} --install "platforms;android-29"
sdkmanager --sdk_root=${ANDROID_HOME} --install "system-images;android-29;google_apis_playstore;x86_64"
```
x86_64 emulator 
```


sdkmanager --install "system-images;android-29;google_apis_playstore;x86_64"

avdmanager --verbose create avd --force --name Nexus-29-x86_64  --package "system-images;android-29;google_apis_playstore;x86_64" 
```


/usr/bin/EMULATOR
```
# gpu pipeline acceleration
# /opt/android/android-sdk/emulator/emulator @Nexus-29-x86_64 -no-boot-anim -netdelay none -no-snapshot -wipe-data -skin 768x1280 -gpu on &
/opt/android/android-sdk/emulator/emulator @Nexus-29-x86_64 -no-boot-anim -netdelay none -no-snapshot -wipe-data -skin 768x1280 &

```


