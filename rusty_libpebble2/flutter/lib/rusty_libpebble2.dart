import 'dart:async';

import 'package:flutter/services.dart';

class RustyLibpebble2 {
  static const MethodChannel _channel = const MethodChannel('rusty_libpebble2');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> hello({to: String}) async {
    final String greetings = await _channel.invokeMethod('hello', {'to': to});
    return greetings;
  }
}
