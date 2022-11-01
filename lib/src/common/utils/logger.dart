import 'package:flutter/foundation.dart';

enum LogMessageType { info, warn, error }

class AppLogger {
  static Future<void> log({
    required String message,
    LogMessageType messageType = LogMessageType.info,
    String tag = '',
    String subTag = '',
    String? url,
    Map<String, dynamic>? payload,
  }) async {
    String newMessage = message;

    if (url != null) {
      newMessage += ' $url';
    }

    if (payload != null) {
      newMessage += '\n$payload';
    }

    String level = 'INFO';

    switch (messageType) {
      case LogMessageType.info:
        level = 'INFO';
        break;
      case LogMessageType.error:
        level = 'ERROR';
        break;
      case LogMessageType.warn:
        level = 'WARNING';
        break;
      default:
    }

    try {
      if (kDebugMode) {
        print(<String, dynamic>{
          'tag': tag,
          'subTag': subTag,
          'logMessage': newMessage,
          'level': level,
        });
      }
    } catch (_) {
      if (kDebugMode) {
        print(_);
      }
    }
  }

  static Future<void> logError({
    required String message,
    String tag = '',
    String subTag = '',
    String? url,
    Map<String, dynamic>? payload,
  }) async {
    try {
      String newMessage = message;

      if (url != null) {
        newMessage += ' $url';
      }

      if (payload != null) {
        newMessage += '\n$payload';
      }
      if (kDebugMode) {
        print(newMessage);
      }
    } catch (_) {
      if (kDebugMode) {
        print(_);
      }
    }
  }
}
