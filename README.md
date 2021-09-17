# Appify
Turn any website into a native app in seconds! For use with npm and cordova.

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

wget here
 nano www/index.html 
 change WEB_SITEURL
  
where /home/Android/Sdk is the path to your android/android-sdk command line tools
export ANDROID_SDK_ROOT=/home/Android/Sdk
java8-switch-on 

sh create-sign.sh
```
## How to Use
  * Change variable  `WEBSITE_URL` to a URL of your choice.
  * Run application with the following command:
```bash
$ cordova run ios
```
  * Watch your app come to life!




