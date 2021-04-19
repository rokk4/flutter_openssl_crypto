import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_openssl_crypto/flutter_openssl_crypto.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_openssl_crypto');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterOpensslCrypto.platformVersion, '42');
  });
}
