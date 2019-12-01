package com.rebble.rusty_libpebble2_lib

// importing the Android library
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class RustyLibpebble2LibPlugin : MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "rusty_libpebble2_lib")
      channel.setMethodCallHandler(RustyLibpebble2LibPlugin())
      // dynamically loading the android library
      loadRustyLibpebble2()
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when {
      call.method == "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
      call.method == "hello" -> {
        val to = call.argument<String>("to")
          if (to == null) {
            result.success("No to parameter found")
          } else {
            // we're using the helloDirect function here
            // but you could also use the hello function, too.
            val res = hello(to)
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

// class RustyLibpebble2LibPlugin: MethodCallHandler {
//   companion object {
//     @JvmStatic
//     fun registerWith(registrar: Registrar) {
//       val channel = MethodChannel(registrar.messenger(), "rusty_libpebble2_lib")
//       channel.setMethodCallHandler(RustyLibpebble2LibPlugin())
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
// }
// }
