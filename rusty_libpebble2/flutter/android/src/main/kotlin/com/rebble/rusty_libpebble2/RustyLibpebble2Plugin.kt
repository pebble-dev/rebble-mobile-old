package com.rebble.rusty_libpebble2

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class RustyLibpebble2Plugin : MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "rusty_libpebble2")
      channel.setMethodCallHandler(RustyLibpebble2Plugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else {
      result.notImplemented()
    }
  }
}
      call.method == "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
      call.method == "getHello" -> {
        val to = call.argument<String>("to")
          if (to == null) {
            result.success("No to parameter found")
          } else {
            // we're using the helloDirect function here
            // but you could also use the hello function, too.
            val res = helloDirect(to)
            result.success(res)
          }
      }
      else -> result.notImplemented()
    }
  }
}

// import io.flutter.plugin.common.MethodCall
// import io.flutter.plugin.common.MethodChannel
// import io.flutter.plugin.common.MethodChannel.MethodCallHandler
// import io.flutter.plugin.common.MethodChannel.Result
// import io.flutter.plugin.common.PluginRegistry.Registrar

// class RustyLibpebble2Plugin: MethodCallHandler {
//   companion object {
//     @JvmStatic
//     fun registerWith(registrar: Registrar) {
//       val channel = MethodChannel(registrar.messenger(), "rusty_libpebble2")
//       channel.setMethodCallHandler(RustyLibpebble2Plugin())
//     }
//   }

//   override fun onMethodCall(call: MethodCall, result: Result) {
//     if (call.method == "getPlatformVersion") {
//       result.success("Android ${android.os.Build.VERSION.RELEASE}")
//     } else {
//       result.notImplemented()
//     }
//   }
// }
