#include "include/trial_flutter_pluggin/trial_flutter_pluggin_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "trial_flutter_pluggin_plugin.h"

void TrialFlutterPlugginPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  trial_flutter_pluggin::TrialFlutterPlugginPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
