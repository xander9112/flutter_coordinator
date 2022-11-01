import 'package:flutter_flow/src/src.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthManager extends BaseManager implements IAuthManager {
  AuthManager({
    IAuthStorage? storage,
  }) : _storage = storage ?? GetIt.I();

  final AuthBloc _authBloc = AuthBloc();
  final LoginBloc _loginBloc = LoginBloc();
  final PinCodeBloc _pinCodeBloc = PinCodeBloc();
  final IAuthStorage _storage;

  AuthBloc get bloc => _authBloc;
  LoginBloc get loginBloc => _loginBloc;
  PinCodeBloc get pinCodeBloc => _pinCodeBloc;

  @override
  FormGroup form = FormGroup(<String, AbstractControl<dynamic>>{
    'login': FormControl<String>(
      validators: <ValidatorFunction>[Validators.required],
    ),
    'password': FormControl<String>(
      validators: <ValidatorFunction>[Validators.required],
    ),
  });

  String? _tempToken;

  @override
  Stream<AuthState> get authStream => _authBloc.stream;

  Function(AuthEvent event) get _emit => _authBloc.add;

  Future<bool> get hasToken => _storage.hasToken();

  void setTempToken(String token) {
    _tempToken = token;
  }

  Future<void> onSuccessPinCode(bool hasPinCode, String? pinCode) async {
    if (_tempToken != null) {
      _storage.setToken(_tempToken!);

      _tempToken = null;
    }

    if (!hasPinCode && pinCode != null) {
      _storage.setPinCode(pinCode);
    }
  }

  @override
  Future<void> init() async {
    // final bool hasToken = await _storage.hasToken();
    // final bool hasPinCode = await _storage.hasPinCode();

    // _emit(AuthEvent.start(
    //   isAuth: hasToken,
    //   hasPinCode: hasPinCode,
    // ));

    // _loginBloc.stream.listen((LoginState event) {
    //   event.maybeWhen(
    //     orElse: () {},
    //     success: (String token) {
    //       _tempToken = token;

    //       _emit(const AuthEvent.login());
    //     },
    //   );
    // });

    // _pinCodeBloc.stream.listen((PinCodeState event) {
    //   event.maybeWhen(
    //     orElse: () {},
    //     success: (bool hasPinCode, String? pinCode) {
    //       if (_tempToken != null) {
    //         _storage.setToken(_tempToken!);

    //         _tempToken = null;
    //       }

    //       if (!hasPinCode && pinCode != null) {
    //         _storage.setPinCode(pinCode);
    //       }

    //       onVerify();
    //     },
    //     error: (String error, bool logout) {
    //       if (logout) {
    //         onSignOut();
    //       }
    //     },
    //   );
    // });
  }

  @override
  void onEnterPinCode(String pinCode) {
    _pinCodeBloc.add(PinCodeEvent.enterPinCode(pinCode: pinCode));
  }

  @override
  void onInitPinCode(bool hasPinCode) {
    _pinCodeBloc.add(PinCodeEvent.started(hasPinCode));
  }

  @override
  Future<void> onSignIn(String login, String password) async {
    log(
      'SignIn request start',
      'onSignIn',
      url: ApiMethods.authLogin,
      payload: <String, dynamic>{'login': login, 'password': '***'},
    );

    _loginBloc.add(const LoginEvent.onSignIn());

    try {
      await Future<dynamic>.delayed(const Duration(seconds: 1));

      if (login == 'user' && password == '123') {
        const String token = 'token123';

        _storage.setTempToken(token);

        log(
          'SignIn request finish',
          'onSignIn',
          url: ApiMethods.authLogin,
        );

        _loginBloc.add(const LoginEvent.onSuccess(token: token));
      } else {
        throw 'Не верный логин или пароль';
      }
    } catch (error) {
      logError(
        'SignIn request finish',
        'onSignIn',
        url: ApiMethods.authLogin,
        payload: <String, dynamic>{'error': error.toString()},
      );

      _loginBloc.add(LoginEvent.onError(error: error.toString()));
    }
  }

  @override
  Future<void> onSignOut() async {
    await _storage.deletePinCode();
    await _storage.deleteToken();

    _authBloc.add(const AuthEvent.logout());
  }

  @override
  void onVerify() {
    _emit(const AuthEvent.verify());
  }

  @override
  void onDeletePinCode() {
    _pinCodeBloc.add(const PinCodeEvent.deletePinCode());
  }

  @override
  void onResetPinCode() {
    _pinCodeBloc.add(const PinCodeEvent.deletePinCode(reset: true));
  }

  @override
  Future<void> onResumed() async {}
}
