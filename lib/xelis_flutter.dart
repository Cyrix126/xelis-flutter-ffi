
import 'xelis_flutter_platform_interface.dart';

class XelisFlutter {
  Future<String?> getPlatformVersion() {
    return XelisFlutterPlatform.instance.getPlatformVersion();
  }
}