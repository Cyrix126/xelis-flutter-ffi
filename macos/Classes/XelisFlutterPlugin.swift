import Cocoa
import FlutterMacOS

public class XelisFlutterPlugin: NSObject, FlutterPlugin {

  @_cdecl("dummy_method_to_enforce_bundling")
  func dummy_method_to_enforce_bundling() -> Int64 {
      // This exists just to force the linker to include our Rust library
      return 42
  }

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "xelis_flutter", binaryMessenger: registrar.messenger)
    let instance = XelisFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
