import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../src.dart';

abstract class AuthCoordinatorDelegate {
  void onAuthCompleted();
}

class AuthCoordinator extends BaseCoordinator
    implements ICoordinator, PinCodePageDelegate, LoginPageDelegate {
  AuthCoordinator({required this.delegate});

  final AuthRouter _authRouter = GetIt.I();

  final AuthCoordinatorDelegate delegate;

  AuthManager get _authManager => facade.authManager;

  StreamSubscription<LoginState>? _loginSubscription;
  StreamSubscription<PinCodeState>? _pinCodeSubscription;

  @override
  void finish() {
    _loginSubscription?.cancel();
    _pinCodeSubscription?.cancel();
  }

  @override
  Future<void> start() async {
    _loginSubscription = _authManager.loginBloc.stream.listen(_loginListen);
    _pinCodeSubscription =
        _authManager.pinCodeBloc.stream.listen(_pinCodeListen);

    final bool hasToken = await _authManager.hasToken;

    pinCodeBloc.add(PinCodeEvent.started(hasToken));

    if (hasToken) {
      _authRouter.push(PinCodeEnterRoute(delegate: this));
    } else {
      _authRouter.push(LoginRoute(delegate: this));
    }

    await Future<dynamic>.delayed(const Duration(milliseconds: 666));

    facade.appManager.appCubit.setUnAuth();
  }

  _loginListen(LoginState event) {
    event.maybeWhen(
      orElse: () {},
      success: (String token) {
        _authManager.setTempToken(token);

        _authRouter.push(PinCodeCreateRoute(delegate: this));
      },
    );
  }

  _pinCodeListen(PinCodeState event) {
    event.maybeWhen(
      orElse: () {},
      success: (bool hasPinCode, String? pinCode) async {
        await _authManager.onSuccessPinCode(hasPinCode, pinCode);

        finish();

        delegate.onAuthCompleted();
      },
    );
  }

  Future<void> onSignOut() async {
    await facade.authManager.onSignOut();

    start();
  }

  @override
  void onDeleteNumber() {
    _authManager.onDeletePinCode();
  }

  @override
  void onPinCodeEnter(String pinCode) {
    _authManager.onEnterPinCode(pinCode);
  }

  @override
  void onResetPinCode() {
    _authManager.onResetPinCode();
  }

  @override
  void onResumed() {}

  @override
  FormGroup get form => _authManager.form;

  @override
  void onPressedEmail() {}

  @override
  void onSubmit(String login, String password) {
    _authManager.onSignIn(login, password);
  }

  @override
  LoginBloc get loginBloc => _authManager.loginBloc;

  @override
  PinCodeBloc get pinCodeBloc => _authManager.pinCodeBloc;

  // final IAuthManager _manager;
  // final AuthRouter _router;

  // Stream<AuthState> get authStream => _manager.authStream.where(
  //       (AuthState event) => event.maybeWhen(
  //         orElse: () => false,
  //         initial: () => true,
  //         verified: () => true,
  //       ),
  //     );

  // void run({VoidCallback? onComplete}) {
  //   _manager.authStream.listen(
  //     (AuthState event) {
  //       event.maybeWhen(
  //         orElse: () {},
  //         initial: () {
  //           _router.navToLogin(_manager.form, _onSubmit);
  //         },
  //         auth: (bool hasPinCode, String? token) {
  //           _manager.onInitPinCode(hasPinCode);

  //           if (hasPinCode) {
  //             _router.navToEnterPinCode(
  //               onPinCodeEnter: onPinCodeEnter,
  //               onDelete: _onDeletePinCode,
  //               onReset: _onResetPinCode,
  //             );
  //           } else {
  //             _router.navToCreatePinCode(
  //               onPinCodeEnter: onPinCodeEnter,
  //               onDelete: _onDeletePinCode,
  //               onReset: _onResetPinCode,
  //             );
  //           }
  //         },
  //         verified: onComplete,
  //       );
  //     },
  //   );

  //   _manager.init();
  // }

  // void onSignOut() {
  //   _manager.onSignOut();
  // }

}
