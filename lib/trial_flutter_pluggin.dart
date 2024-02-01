
import 'trial_flutter_pluggin_platform_interface.dart';

class TrialFlutterPluggin {
  Future<String?> getPlatformVersion() {
    return TrialFlutterPlugginPlatform.instance.getPlatformVersion();
  }

  Future<String?> getNewVersion() {
    return TrialFlutterPlugginPlatform.instance.getNewVersion();
  }
}
