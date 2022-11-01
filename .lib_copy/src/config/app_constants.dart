import 'dart:io';

import 'package:flutter/foundation.dart';

enum EnvType { dev, test, prod }

abstract class AppConstants {
  static const String projectName = 'FlutterCoordinator';
  static const String iOSId = 'com.flutter.coordinator';
  static const String iOSAppStoreId = '1234567890';
  static const String androidId = 'com.flutter.coordinator';

  static const int pinCodeLength = 4;

  static String get getAppId {
    if (isIOS) {
      return iOSId;
    }

    if (isAndroid) {
      return androidId;
    }

    return '';
  }

  static bool get isIOS => !kIsWeb && Platform.isIOS;
  static bool get isAndroid => !kIsWeb && Platform.isAndroid;
  static bool get isWeb => kIsWeb;
}
