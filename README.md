
# Android (macOS see below)

# requires java8 (modify java dx.jar as build-app.sh mentions to avoid conflicts when building apk)
# edit config.xml (package name)
# edit package.json (first two lines for package name)
# modify ic_launcher_custom/logo.png with gimp
# npm install
# sh logo-adjust.sh
# sh build-app.sh

```
cp -rf /opt/appify-android-ios-cordova-builder/platforms/android/app/build/outputs/apk/debug/app-debug.apk /home/<user_name>/Desktop/your-app-name.apk
```
# recommended node 14.18


```
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 14.18
nvm use 14.18
nvm alias default 14.18
node -v
```


# MACOS (required when Xcode opens from build-macOS.sh script)
![s1](https://raw.githubusercontent.com/c4pt000/appify-android-ios-cordova-builder/master/unique-name-and-bundle-id.png)
![s1](https://raw.githubusercontent.com/c4pt000/appify-android-ios-cordova-builder/master/ios-target-much-greater-than-ios7.png)
![s1](https://raw.githubusercontent.com/c4pt000/appify-android-ios-cordova-builder/master/correcting-apple-bundle-id-sign.png)
![s1](https://raw.githubusercontent.com/c4pt000/appify-android-ios-cordova-builder/master/change-target-deployment-target.png)

# Appify
# gradle 7.1 only

# Android requires this cleartext flag when using http sites that are non https enabled in the index.html to load with the app 
# ios is not effected by this 

if the site in www/index.html is either https:// or http://

https://stackoverflow.com/questions/45940861/android-8-cleartext-http-traffic-not-permitted

for regular HTTP (non-https sites) in config.xml (OR AVOID encapsulating an http site altogether)

edit this file
https://raw.githubusercontent.com/c4pt000/appify-android-ios-cordova-builder/master/platforms/android/app/src/main/AndroidManifest.xml
```
platforms/android/app/src/main/AndroidManifest.xml


 
```
# choose one of these two options below in AndroidManifest.xml depending on the site in var WEBSITE_URL = index.html (http or https)

#     <!-- without the android:usesCleartextTraffic="true" setting to allow only HTTP the application CAN ONLY FUNCTION AS HTTPS -->


HTTP only (cleartext=true set here)
```
 <!-- for http sites NON https -->
       <application android:usesCleartextTraffic="true" android:hardwareAccelerated="true" android:icon="@mipmap/ic_launcher" android:label="@string/app_name" android:supportsRtl="true">  
<!-- or else use the following for HTTPS only -->
    <!-- <application android:hardwareAccelerated="true" android:icon="@mipmap/ic_launcher" android:label="@string/app_name" android:supportsRtl="true"> -->
    
      

```

HTTPS only
```
 <!-- for http sites NON https -->
    <!--     <application android:usesCleartextTraffic="true" android:hardwareAccelerated="true" android:icon="@mipmap/ic_launcher" android:label="@string/app_name" android:supportsRtl="true">  -->

<!-- or else use the following for HTTPS only -->
    <application android:hardwareAccelerated="true" android:icon="@mipmap/ic_launcher" android:label="@string/app_name" android:supportsRtl="true">
       
      
```

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
original author readme notes below
<br>
<br>
<br>

Turn any website into a native app in seconds! For use with npm and cordova.

##Demo with iPad
![Demo](Demo.gif)

## Setup
```bash
$ npm install -g cordova
$ cordova plugin add https://git-wip-us.apache.org/repos/asf/cordova-plugin-inappbrowser.git
$ git clone https://github.com/samkho10/appify.git <app-name>
```
## How to Use
  * Change variable  `WEBSITE_URL` to a URL of your choice.
  * Run application with the following command:
```bash
$ cordova run ios
```
  * Watch your app come to life!




