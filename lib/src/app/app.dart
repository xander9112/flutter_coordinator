import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../src.dart';

abstract class AppDelegate {
  AppCubit get appCubit;

  bool get showAnimation;
  void onAnimationFinished();
}

class App extends StatelessWidget {
  const App({required this.delegate, super.key});

  final AppDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.projectName,
      theme: themeLight,
      themeMode: ThemeMode.light,
      home: _App(delegate: delegate),
    );
  }
}

class _App extends StatelessWidget {
  const _App({required this.delegate});

  final AppDelegate delegate;

  NeoRouter get _appRouter => GetIt.I();
  AuthRouter get _authRouter => GetIt.I();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      bloc: delegate.appCubit,
      builder: (BuildContext context, AppState state) {
        return Stack(
          children: <Widget>[
            Offstage(
              offstage: state is! AppStateInitial,
              child: SplashPage(
                onFinish: delegate.onAnimationFinished,
                showAnimation: delegate.showAnimation,
              ),
            ),
            Offstage(
              offstage: state is! AppStateUnAuth,
              child: Router<UrlState>(
                routeInformationProvider: _authRouter.routeInfoProvider(),
                routerDelegate: _authRouter.delegate(),
                routeInformationParser: _authRouter.defaultRouteParser(),
              ),
            ),
            Offstage(
              offstage: state is! AppStateAuth,
              child: Router<UrlState>(
                routeInformationProvider: _appRouter.routeInfoProvider(),
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
              ),
            ),
          ],
        );
      },
    );
  }
}
