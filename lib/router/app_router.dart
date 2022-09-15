import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flow/splash.dart';

import '../features/features.dart';
import 'empty_router.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthPage),
    AutoRoute(page: PinCodePage),
    AutoRoute<void>(
      page: MainPage,
      children: <AutoRoute<dynamic>>[
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: EmptyRouterPage,
          name: 'KeepRouter',
          children: <AutoRoute<dynamic>>[
            AutoRoute(page: KeepPage, initial: true),
            AutoRoute<void>(page: CounterPage),
          ],
        ),
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: EmptyRouterPage,
          name: 'ResetRouter',
          children: <AutoRoute<dynamic>>[
            AutoRoute(page: ResetPage, initial: true),
            AutoRoute<void>(page: CounterPage),
          ],
        ),
      ],
    ),
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}
