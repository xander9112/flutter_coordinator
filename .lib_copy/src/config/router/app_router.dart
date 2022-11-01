import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flow/splash.dart';
import 'package:flutter_flow/src/calendar.dart';
import 'package:flutter_flow/src/services.dart';
import 'package:flutter_flow/src/temp.dart';
import 'package:flutter_flow/src/user.dart';
import 'package:flutter_flow/src/users.dart';

import '../../features/features.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: SplashPage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: AuthPage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: EnterPinCodePage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: CreatePinCodePage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: TempPage,
    ),
    CustomRoute<void>(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: MainPage,
      children: <AutoRoute<dynamic>>[
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: CalendarPage,
        ),
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: ServicesPage,
        ),
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: HomePage,
        ),
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: UsersPage,
        ),
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: ProfilePage,
        ),
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: UserPage,
        ),
      ],
    ),
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}
