import 'package:get_it/get_it.dart';

import '../auth.dart';

class AuthController {
  AuthController({
    AuthBloc? bloc,
    LoginBloc? loginBloc,
    PinCodeBloc? pinCodeBloc,
    AuthStorage? storage,
  })  : _bloc = bloc ?? GetIt.I(),
        _loginBloc = loginBloc ?? GetIt.I(),
        _pinCodeBloc = pinCodeBloc ?? GetIt.I(),
        _storage = storage ?? GetIt.I();

  final AuthBloc _bloc;
  final LoginBloc _loginBloc;
  final PinCodeBloc _pinCodeBloc;
  final AuthStorage _storage;

  String? _tempToken;

  Stream<AuthState> get authStream => _bloc.stream;

  get _emit => _bloc.add;

  Future<void> start() async {
    final bool hasToken = await _storage.hasToken();
    final bool hasPinCode = await _storage.hasPinCode();
    final bool usePinCode = await _storage.usePinCode();

    _emit(AuthEvent.start(
      isAuth: hasToken,
      hasPinCode: hasPinCode,
      usePinCode: usePinCode,
    ));

    _loginBloc.stream.listen((LoginState event) {
      event.maybeWhen(
        orElse: () {},
        success: (String token) {
          _tempToken = token;

          _emit(const AuthEvent.login());
        },
      );
    });

    _pinCodeBloc.stream.listen((PinCodeState event) {
      event.maybeWhen(
        orElse: () {},
        success: (bool hasPinCode, bool usePinCode, String? pinCode) {
          if (_tempToken != null) {
            _storage.setToken(_tempToken!);

            _tempToken = null;
          }

          if (!hasPinCode && pinCode != null) {
            _storage.setPinCode(pinCode);
          }

          onVerify(usePinCode);
        },
        error: (String error, bool logout) {
          if (logout) {
            onLogout();
          }
        },
      );
    });
  }

  void onVerify(bool usePinCode) {
    _emit(const AuthEvent.verify());

    if (!usePinCode) {
      _pinCodeBloc.add(PinCodeEvent.updateUsePinCode(usePinCode: usePinCode));
    }
  }

  void onInitPinCode(bool hasPinCode) {
    _pinCodeBloc.add(PinCodeEvent.started(hasPinCode));
  }

  void onChangeUsePinCode(bool value) {
    _pinCodeBloc.add(PinCodeEvent.updateUsePinCode(usePinCode: value));
  }

  Future<void> onSubmit(String login, String password) async {
    _loginBloc.add(LoginEvent.login(login: login, password: password));
  }

  Future<void> onPinCodeEnter(String pinCode, String? token) async {
    _pinCodeBloc.add(PinCodeEvent.enterPinCode(pinCode: pinCode));
  }

  Future<void> onLogout() async {
    await _storage.deletePinCode();
    await _storage.deleteToken();
    await _storage.deleteUsePinCode();

    _bloc.add(const AuthEvent.logout());
  }
}
