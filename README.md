
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

https://stackoverflow.com/questions/45940861/android-8-cleartext-http-traffic-not-permitted

for regular HTTP (non-https sites) in config.xml (OR AVOID encapsulating an http site altogether)

```
replace "<application> tag"
```

```
      <application android:usesCleartextTraffic="true" />
      
```
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




