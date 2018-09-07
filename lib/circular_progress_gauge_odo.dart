import 'dart:async';

import 'package:flutter/services.dart';

class CircularProgressGaugeOdo {
  static const MethodChannel _channel =
      const MethodChannel('circular_progress_gauge_odo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
