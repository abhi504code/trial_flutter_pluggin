import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'trial_flutter_pluggin_platform_interface.dart';

/// An implementation of [TrialFlutterPlugginPlatform] that uses method channels.
class MethodChannelTrialFlutterPluggin extends TrialFlutterPlugginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('trial_flutter_pluggin');




  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getNewVersion() async {
    print("abhishek");
    methodChannel.setMethodCallHandler((call) async {
      if (call.method == 'helloBoss') {
        print("abhishek daddy");
      }
    });
    final version = await methodChannel.invokeMethod('getNewVersion', ["pal","abhi"]);

    return version;
  }

}
