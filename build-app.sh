java8-switch-on
echo "requires build-tools 31.0.0"
echo 'sdkmanager "build-tools;31.0.0"'
echo ""
echo ""
echo ""
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 14.18
nvm use 14.18
nvm alias default 14.18
node -v
sleep 1s
npm install 
echo ' for problems where a file in the 31.0.0 build-tools might get corrupt with this script 

replace /root/Android/Sdk
with your actual location of Android-SDK

mv /root/Android/Sdk/build-tools/31.0.0/d8 /root/Android/Sdk/build-tools/31.0.0/dx
mv /root/Android/Sdk/build-tools/31.0.0/lib/d8.jar /root/Android/Sdk/build-tools/31.0.0/lib/dx.jar
'
sleep 10s
 cordova plugin add cordova-plugin-inappbrowser

export GRADLE_OPTS="-Dorg.gradle.parallel=true -Dorg.gradle.workers.max=8 -Dorg.gradle.daemon=true -Dorg.gradle.configureondemand=true"
cordova build android --verbose
