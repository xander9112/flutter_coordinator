import 'package:flutter_flow/src/src.dart';
import 'package:get_it/get_it.dart';

class AuthInjectable {
  static Future<void> init(GetIt getIt) async {
    getIt.registerSingleton<IAuthStorage>(AuthStorage());
    getIt.registerSingleton<AuthBloc>(AuthBloc());
    getIt.registerSingleton<LoginBloc>(LoginBloc());
    getIt.registerSingleton<PinCodeBloc>(PinCodeBloc());
  }
}
