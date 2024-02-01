import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trial_flutter_pluggin/trial_flutter_pluggin_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelTrialFlutterPluggin platform = MethodChannelTrialFlutterPluggin();
  const MethodChannel channel = MethodChannel('trial_flutter_pluggin');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
