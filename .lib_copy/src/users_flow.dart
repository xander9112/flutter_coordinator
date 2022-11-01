import 'package:get_it/get_it.dart';

import 'config/config.dart';

class UsersFlow {
  UsersFlow({
    AppRouter? router,
  }) : _router = router ?? GetIt.I();

  final AppRouter _router;

  void navToUsers() {
    _router.replaceAll([UsersRoute(onUserPressed: onUserPressed)]);
  }

  void onUserPressed(int id) {
    _router.navigate(UserRoute(id: id));
  }
}
