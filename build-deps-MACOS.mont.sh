echo "make sure to edit img in ic_launcher_custom with gimp or adobe photoshop for macOS"
echo "brew install gimp"
echo "requires Xcode build tools, nvm for node, possibly brew"
sleep 5s

 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

echo '
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
' >> ~/.zshrc

source ~/.zshrc

nvm install 14.18
nvm use 14.18
nvm alias default 14.18
npm install 
npm -g install cordova
echo "running logo-adjust for app icon image"
sleep 2s
sh logo-adjust.sh
sleep 3s
echo "make sure to edit config.xml in the root dir"
echo 'edit platforms/ios/www/index.html to change the var WEBSITE_URL

    var WEBSITE_URL = 'http://radiopool.me:9555/static/';
'

 open -a Xcode platforms/ios
