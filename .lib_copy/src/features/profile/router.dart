import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../src.dart';

class ProfileRouter {
  ProfileRouter({AppRouter? router}) : _router = router ?? GetIt.I<AppRouter>();

  final AppRouter _router;

  Future<dynamic> navToProfile<T extends Object?>({
    Function(bool value)? onChangeUsePinCode,
    VoidCallback? onPressedLogout,
  }) async {
    return _router.replaceAll([
      ProfileRoute(
        onChangeUsePinCode: onChangeUsePinCode,
        onPressedLogout: onPressedLogout,
      ),
    ]);
  }

  void navToTemp() {
    _router.push(const TempRoute());
  }
}
