import 'package:flutter_flow/src/src.dart';

class AppManager {
  AppManager._internal();
  factory AppManager() => _singleton;
  static final AppManager _singleton = AppManager._internal();

  final AppCubit appCubit = AppCubit();
}
