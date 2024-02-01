#ifndef FLUTTER_PLUGIN_TRIAL_FLUTTER_PLUGGIN_PLUGIN_H_
#define FLUTTER_PLUGIN_TRIAL_FLUTTER_PLUGGIN_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace trial_flutter_pluggin {

class TrialFlutterPlugginPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TrialFlutterPlugginPlugin();

  virtual ~TrialFlutterPlugginPlugin();

  // Disallow copy and assign.
  TrialFlutterPlugginPlugin(const TrialFlutterPlugginPlugin&) = delete;
  TrialFlutterPlugginPlugin& operator=(const TrialFlutterPlugginPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace trial_flutter_pluggin

#endif  // FLUTTER_PLUGIN_TRIAL_FLUTTER_PLUGGIN_PLUGIN_H_
