import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'xelis_flutter_platform_interface.dart';

/// An implementation of [XelisFlutterPlatform] that uses method channels.
class MethodChannelXelisFlutter extends XelisFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('xelis_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
