import 'package:flutter_test/flutter_test.dart';
import 'package:xelis_flutter/xelis_flutter.dart';
import 'package:xelis_flutter/xelis_flutter_platform_interface.dart';
import 'package:xelis_flutter/xelis_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockXelisFlutterPlatform
    with MockPlatformInterfaceMixin
    implements XelisFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final XelisFlutterPlatform initialPlatform = XelisFlutterPlatform.instance;

  test('$MethodChannelXelisFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelXelisFlutter>());
  });

  test('getPlatformVersion', () async {
    XelisFlutter xelisFlutterPlugin = XelisFlutter();
    MockXelisFlutterPlatform fakePlatform = MockXelisFlutterPlatform();
    XelisFlutterPlatform.instance = fakePlatform;

    expect(await xelisFlutterPlugin.getPlatformVersion(), '42');
  });
}
