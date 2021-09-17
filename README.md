# Appify
Turn any website into a native app in seconds! For use with npm and cordova.

* for ubuntu/debian based java8 and java11 fast switching bash scripts

https://github.com/c4pt000/Aqua-Term/blob/master/java11-switch-on-ubuntu
https://github.com/c4pt000/Aqua-Term/blob/master/java8-switch-on-ubuntu

##Demo with iPad
![Demo](Demo.gif)
requires java8 for cordova to build apk, java11 to sign see create-apk-sign.sh file 
## Setup
```bash
$ npm install -g cordova


# change myApp to 'your app name'
cordova create myApp org.apache.cordova.myApp myApp
# cd to 'your app name'
cordova platform add android
cordova plugin add cordova-plugin-inappbrowser

rm -rf www/
wget https://github.com/c4pt000/appify-android-ios-cordova-builder/releases/download/www/www.cordova.tar.gz
tar -xvf www.cordova.tar.gz
nano www/index.html 

change the following in www/index.html
 
 var WEBSITE_URL = 'https://exbitron.com';
 
 to https://your-website-to-appify.com
 
 
 # build
where /home/Android/Sdk is the path to your android/android-sdk command line tools
export ANDROID_SDK_ROOT=/home/Android/Sdk

java8-switch-on 
cordova build android --verbose

or on macOS only with Xcode
    cordova build ios --verbose

# sign built apk
java11-switch-on

# sign app-debug.apk to a signed apk for publishing
sh create-keystore-and-sign.sh
```
```
$ cordova run ios 
or
$ cordova run android
```
  * Watch your app come to life!




