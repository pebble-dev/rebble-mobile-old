import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rusty_libpebble2/rusty_libpebble2.dart';

void main() {
  const MethodChannel channel = MethodChannel('rusty_libpebble2');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RustyLibpebble2.platformVersion, '42');
  });
}
