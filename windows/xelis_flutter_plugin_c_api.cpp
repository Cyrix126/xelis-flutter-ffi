#include "include/xelis_flutter/xelis_flutter_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "xelis_flutter_plugin.h"

void XelisFlutterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  xelis_flutter::XelisFlutterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
