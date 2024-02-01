import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'trial_flutter_pluggin_method_channel.dart';

abstract class TrialFlutterPlugginPlatform extends PlatformInterface {
  /// Constructs a TrialFlutterPlugginPlatform.
  TrialFlutterPlugginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TrialFlutterPlugginPlatform _instance = MethodChannelTrialFlutterPluggin();

  /// The default instance of [TrialFlutterPlugginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTrialFlutterPluggin].
  static TrialFlutterPlugginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TrialFlutterPlugginPlatform] when
  /// they register themselves.
  static set instance(TrialFlutterPlugginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getNewVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
