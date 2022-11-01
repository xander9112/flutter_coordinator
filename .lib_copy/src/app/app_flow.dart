import 'package:flutter/widgets.dart';
import 'package:flutter_flow/src/config/config.dart';
import 'package:get_it/get_it.dart';

import '../features/features.dart';
import 'app.dart';

class AppFlow {
  AppFlow() {
    _run();
  }

  final AuthFlow _authFlow = AuthFlow();
  final MainFlow _mainFlow = MainFlow();

  void _run() {
    runApp(const App());

    GetIt.I<AppRouter>().replace(SplashRoute(onFinish: onFinish));
  }

  Future<void> _initAuthCheck() async {
    _authFlow.authStream.listen(
      (AuthState event) {
        event.maybeWhen(
          orElse: () {},
          initial: () {
            _authFlow.run();
          },
          verified: () {
            _mainFlow.run();
          },
        );
      },
    );

    _authFlow.init();
  }

  void onFinish() {
    _initAuthCheck();
  }
}
