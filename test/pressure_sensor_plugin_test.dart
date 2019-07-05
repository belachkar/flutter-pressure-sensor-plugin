import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pressure_sensor_plugin/pressure_sensor_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('pressure_sensor_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PressureSensorPlugin.platformVersion, '42');
  });
}
