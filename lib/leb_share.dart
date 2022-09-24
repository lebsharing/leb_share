
import 'dart:async';

import 'package:flutter/services.dart';

class LebShare {
  static const MethodChannel _channel = MethodChannel('leb_share');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
