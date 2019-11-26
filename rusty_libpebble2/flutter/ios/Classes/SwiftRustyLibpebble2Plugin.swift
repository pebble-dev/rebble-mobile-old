import Flutter
import UIKit

public class SwiftRustyLibpebble2Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "rusty_libpebble2", binaryMessenger: registrar.messenger())
    let instance = SwiftRustyLibpebble2Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    
    NSLog(">>>>>>>>>>> Swift handler called for method: \(call.method) ")

    if (call.method == "getPlatformVersion") {
      result("iOS " + UIDevice.current.systemVersion)
    } else if (call.method == "hello") {
      if let args = call.arguments as? Dictionary<String, Any>,
        let to = args["to"] as? String {
          NSLog(to)
          let res = hello(to)
          let sr = String(cString: res!)
          hello_release(UnsafeMutablePointer(mutating: res))
          result(sr)
        }
    } else {
      result("DEFAULT CASE: iOS " + UIDevice.current.systemVersion)
    }
  }
}
