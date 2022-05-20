import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:client_dart_plugin/client_dart_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('client_dart_plugin');

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
    expect(await ClientDartPlugin.platformVersion, '42');
  });
}
