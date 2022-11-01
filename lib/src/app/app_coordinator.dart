import 'package:flutter/material.dart';

import '../src.dart';

class AppCoordinator extends BaseCoordinator
    implements ICoordinator, AppDelegate, AuthCoordinatorDelegate {
  AppCoordinator._internal();

  factory AppCoordinator() => _singleton;

  static final AppCoordinator _singleton = AppCoordinator._internal();

  @override
  AppCubit get appCubit => facade.appManager.appCubit;

  @override
  void onAnimationFinished() {
    AuthCoordinator(delegate: this).start();
  }

  @override
  bool showAnimation = true;

  @override
  void finish() {}

  @override
  void start() {
    runApp(App(delegate: this));
  }

  @override
  void onAuthCompleted() {
    facade.appManager.appCubit.setAuth();

    MainCoordinator().start();
  }
}
