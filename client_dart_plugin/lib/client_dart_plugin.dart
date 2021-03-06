
import 'dart:async';

import 'package:flutter/services.dart';

class ClientDartPlugin {
  static const MethodChannel _channel =
      const MethodChannel('client_dart_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
