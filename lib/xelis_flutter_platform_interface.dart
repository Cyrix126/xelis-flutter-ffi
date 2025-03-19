import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'xelis_flutter_method_channel.dart';

abstract class XelisFlutterPlatform extends PlatformInterface {
  /// Constructs a XelisFlutterPlatform.
  XelisFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static XelisFlutterPlatform _instance = MethodChannelXelisFlutter();

  /// The default instance of [XelisFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelXelisFlutter].
  static XelisFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [XelisFlutterPlatform] when
  /// they register themselves.
  static set instance(XelisFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
