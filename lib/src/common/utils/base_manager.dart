import 'logger.dart';

class BaseManager {
  void log(
    String message,
    String method, {
    String? url,
    Map<String, dynamic>? payload,
  }) {
    AppLogger.log(
      message: message,
      tag: '$runtimeType',
      subTag: method,
      url: url,
      payload: payload,
    );
  }

  void logError(
    String message,
    String method, {
    String? url,
    Map<String, dynamic>? payload,
  }) {
    AppLogger.logError(
      message: message,
      tag: '$runtimeType',
      subTag: method,
      url: url,
      payload: payload,
    );
  }
}
