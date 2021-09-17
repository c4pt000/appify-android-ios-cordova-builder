cordova.define('cordova/plugin_list', function(require, exports, module) {
  module.exports = [
    {
      "id": "cordova-plugin-inappbrowser.inappbrowser",
      "file": "plugins/cordova-plugin-inappbrowser/www/inappbrowser.js",
      "pluginId": "cordova-plugin-inappbrowser",
      "clobbers": [
        "cordova.InAppBrowser.open",
        "window.open"
      ]
    },
    {
      "id": "cordova-plugin-whitelist.whitelist",
      "file": "plugins/cordova-plugin-whitelist/whitelist.js",
      "pluginId": "cordova-plugin-whitelist",
      "runs": true
    }
  ];
  module.exports.metadata = {
    "cordova-plugin-inappbrowser": "1.1.1",
    "cordova-plugin-whitelist": "1.2.0"
  };
});