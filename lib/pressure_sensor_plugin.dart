import 'dart:async';

import 'package:flutter/services.dart';

class PressureSensorPlugin {
  static const MethodChannel _channel =
      const MethodChannel('pressure_sensor_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
