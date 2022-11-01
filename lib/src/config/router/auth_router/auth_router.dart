import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flow/src/src.dart';

part 'auth_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      name: 'UnAuthEmptyRouter',
      page: UnAuthPage,
      initial: true,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: LoginPage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: PinCodeCreatePage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: PinCodeEnterPage,
    ),
  ],
)
// extend the generated private router
class AuthRouter extends _$AuthRouter {}
