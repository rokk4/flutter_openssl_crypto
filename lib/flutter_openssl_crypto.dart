
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterOpensslCrypto {
  static const MethodChannel _channel =
      const MethodChannel('flutter_openssl_crypto');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
