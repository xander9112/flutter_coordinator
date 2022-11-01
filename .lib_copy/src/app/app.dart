import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../src.dart';

class App extends StatelessWidget {
  const App({super.key});

  AppRouter get _appRouter => GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (BuildContext context, Widget? child) {
        return Container(child: child);
      },
    );
  }
}
