import '../features/features.dart';

class AppFlow {
  AppFlow() {
    _run();
  }

  final AuthFlow _authFlow = AuthFlow();
  final MainFlow _mainFlow = MainFlow();

  void _run() {
    _initAuthCheck();
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
}
