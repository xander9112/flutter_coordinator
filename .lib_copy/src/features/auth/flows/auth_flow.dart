import 'package:get_it/get_it.dart';

import '../auth.dart';

class AuthFlow {
  AuthFlow({
    AuthController? controller,
    AuthRouter? router,
  })  : _controller = controller ?? GetIt.I(),
        _router = router ?? GetIt.I();

  final AuthController _controller;
  final AuthRouter _router;

  Stream<AuthState> get authStream => _controller.authStream.where(
        (AuthState event) => event.maybeWhen(
          orElse: () => false,
          initial: () => true,
          verified: () => true,
        ),
      );

  void init() {
    _controller.authStream.listen(
      (AuthState event) {
        event.maybeWhen(
          orElse: () {},
          initial: () {
            _router.navToLogin(_controller, onSubmit);
          },
          auth: (bool hasPinCode, bool usePinCode, String? token) {
            _controller.onInitPinCode(hasPinCode);

            if (usePinCode) {
              if (hasPinCode) {
                _router.navToEnterPinCode(onPinCodeEnter(token));
              } else {
                _router.navToCreatePinCode(onPinCodeEnter(token));
              }
            } else {
              _controller.onVerify(false);
            }
          },
        );
      },
    );

    _controller.start();
  }

  void run() {}

  onSubmit(String login, String password) {
    _controller.onSubmit(login, password);
  }

  onPinCodeEnter(String? token) => (String pinCode) {
        _controller.onPinCodeEnter(pinCode, token);
      };

  onLogOut() {
    _controller.onLogout();
  }
}
