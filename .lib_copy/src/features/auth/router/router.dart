import 'package:get_it/get_it.dart';

import '../../../src.dart';
import '../auth.dart';

class AuthRouter {
  AuthRouter({AppRouter? router}) : _router = router ?? GetIt.I<AppRouter>();

  final AppRouter _router;

  Future<T?> navToLogin<T extends Object?>(
    AuthController controller,
    LoginOnSubmit onSubmit,
  ) async {
    return _router.replace(AuthRoute(onSubmit: onSubmit));
  }

  Future<T?> navToCreatePinCode<T extends Object?>(
      PinCodeOnSubmit onPinCodeEnter) async {
    return _router.replace(CreatePinCodeRoute(onPinCodeEnter: onPinCodeEnter));
  }

  Future<T?> navToEnterPinCode<T extends Object?>(
      PinCodeOnSubmit onPinCodeEnter) async {
    return _router.replace(EnterPinCodeRoute(onPinCodeEnter: onPinCodeEnter));
  }
}
