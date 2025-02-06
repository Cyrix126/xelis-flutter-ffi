//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <xelis_flutter/xelis_flutter_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) xelis_flutter_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "XelisFlutterPlugin");
  xelis_flutter_plugin_register_with_registrar(xelis_flutter_registrar);
}
