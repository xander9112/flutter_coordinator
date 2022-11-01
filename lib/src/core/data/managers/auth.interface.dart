import 'package:reactive_forms/reactive_forms.dart';

import '../state/_state.dart';

abstract class IAuthManager {
  late final FormGroup form;

  Stream<AuthState> get authStream;

  Future<void> init();

  void onVerify();

  void onInitPinCode(bool hasPinCode);

  void onEnterPinCode(String pinCode);

  Future<void> onSignIn(String login, String password);

  Future<void> onSignOut();

  void onDeletePinCode();

  void onResetPinCode();

  Future<void> onResumed();
}
