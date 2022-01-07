
* as a utility to deploy to ios or android from a local/remote http or https site

# WIP currently has naming convention issues with automatic scripts and not manual editing of the source (when building more than one package, changing the site, changing the logo with this project)


# based directly on Apache Cordova project to bottle html and JavaScript code to a mobile ready solution
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

# android package naming convention
```
nano --> config.xml

replace android-packageName=" org.apache.cordova.radioblockchain "


<widget id="io.cordova.hellocordova"  android-packageName="org.apache.cordova.radioblockchain" version="1.0.0" xmlns="http://www.w3.org/ns/widgets" xmlns:cdv="http://cordova.apache.org/ns/1.0">
<name>radioblockchain.info</name>


nano --> package.json

  "name": "org.apache.cordova.radioblockchain",
  "displayName": "radioblockchain",

```



# Android specific https or http in the index.html (clear-text functions for regular http and non-https)
# Android requires this cleartext flag when using http sites that are non https enabled in the index.html to load with the app 
# ios is not effected by this setting at all

if the site in www/index.html is either https:// or http://

reference https://stackoverflow.com/questions/45940861/android-8-cleartext-http-traffic-not-permitted

for regular HTTP (non-https sites) in AndroidManifest.xml (OR AVOID encapsulating an http site altogether)

edit this file
https://raw.githubusercontent.com/c4pt000/appify-android-ios-cordova-builder/master/platforms/android/app/src/main/AndroidManifest.xml
```
platforms/android/app/src/main/AndroidManifest.xml


 
```

# choose one of these two options below in AndroidManifest.xml depending on the site in var WEBSITE_URL = index.html (http or https)
#      choose without the android:usesCleartextTraffic="true" setting to allow HTTPS 
#      choose with  the android:useCleartextTraffic="true" to allow HTTP


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



