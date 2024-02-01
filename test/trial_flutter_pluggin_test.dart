import 'package:flutter_test/flutter_test.dart';
import 'package:trial_flutter_pluggin/trial_flutter_pluggin.dart';
import 'package:trial_flutter_pluggin/trial_flutter_pluggin_platform_interface.dart';
import 'package:trial_flutter_pluggin/trial_flutter_pluggin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTrialFlutterPlugginPlatform
    with MockPlatformInterfaceMixin
    implements TrialFlutterPlugginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getNewVersion() {
    // TODO: implement getNewVersion
    throw UnimplementedError();
  }
}

void main() {
  final TrialFlutterPlugginPlatform initialPlatform = TrialFlutterPlugginPlatform.instance;

  test('$MethodChannelTrialFlutterPluggin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTrialFlutterPluggin>());
  });

  test('getPlatformVersion', () async {
    TrialFlutterPluggin trialFlutterPlugginPlugin = TrialFlutterPluggin();
    MockTrialFlutterPlugginPlatform fakePlatform = MockTrialFlutterPlugginPlatform();
    TrialFlutterPlugginPlatform.instance = fakePlatform;

    expect(await trialFlutterPlugginPlugin.getPlatformVersion(), '42');
  });
}
