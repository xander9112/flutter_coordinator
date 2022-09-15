import 'package:get_it/get_it.dart';

import '../../router/app_router.dart';
import 'auth_manager.dart';
import 'bloc/auth_bloc.dart';

class AuthFlow {
  AuthFlow({
    AppRouter? appRouter,
    AuthBloc? authBloc,
  })  : _appRouter = appRouter ?? GetIt.I<AppRouter>(),
        _authBloc = authBloc ?? GetIt.I<AuthBloc>();

  final AppRouter _appRouter;
  final AuthBloc _authBloc;

  final AuthManager manager = AuthManager();

  // bool get isAuth => _authBloc.state.maybeMap(
  //       initial: (_) => false,
  //       orElse: () => true,
  //     );

  // bool get isVerify => _authBloc.state.maybeMap(
  //       verified: (_) => true,
  //       orElse: () => false,
  //     );

  Stream<AuthState> get authStream => _authBloc.stream;

  void init() {
    authStream.listen(
      (AuthState event) {
        event.maybeWhen(
          orElse: () {},
          initial: () {
            _appRouter.replace(AuthRoute(onSubmit: onSubmit));
          },
          auth: (_) {
            _appRouter.replace(PinCodeRoute(onPinCodeEnter: onPinCodeEnter));
          },
        );
      },
    );

    _authBloc.add(const AuthEvent.started());
  }

  void run() {
    _authBloc.state.maybeWhen(
      orElse: () {},
      auth: (String? token) {},
      verified: () {},
    );
  }

  onSubmit(String login, String password) {
    _authBloc.add(AuthEvent.logIn(login: login, password: password));
  }

  onPinCodeEnter(String pinCode) {
    _authBloc.add(AuthEvent.verify(pinCode: pinCode));
  }

  onLogOut() {
    _authBloc.add(const AuthEvent.logout());
  }
}
