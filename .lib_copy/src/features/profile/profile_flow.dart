import 'package:get_it/get_it.dart';

import '../../users_flow.dart';
import '../features.dart';

class ProfileFlow {
  ProfileFlow({
    ProfileRouter? profileRouter,
    AuthController? authController,
    UsersFlow? usersFlow,
  })  : _profileRouter = profileRouter ?? GetIt.I(),
        _usersFlow = usersFlow ?? GetIt.I(),
        _authController = authController ?? GetIt.I();

  final ProfileRouter _profileRouter;
  final AuthController _authController;
  final UsersFlow _usersFlow;

  void run() {}

  void _onChangeUsePinCode(bool value) {
    _profileRouter.navToTemp();
    // _authController.onChangeUsePinCode(value);
  }

  void _onPressedLogout() {
    _usersFlow.onUserPressed(3);
    // _authController.onLogout();
  }

  void onPressedProfile() {
    _profileRouter.navToProfile(
      onChangeUsePinCode: _onChangeUsePinCode,
      onPressedLogout: _onPressedLogout,
    );
  }
}
