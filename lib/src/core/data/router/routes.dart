import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter_flow/src/src.dart';

const List<AutoRoute> coreRoutes = <AutoRoute<dynamic>>[
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: UnAuthPage,
    initial: true,
  ),
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: MainPage,
    children: <AutoRoute<dynamic>>[
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: UnAuthPage,
        name: 'MainLoader',
      ),
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: EmptyRouterPage,
        name: 'UsersRouter',
        children: <AutoRoute>[
          CustomRoute<void>(
            transitionsBuilder: TransitionsBuilders.fadeIn,
            page: UsersPage,
          ),
          AutoRoute<void>(page: UserPage),
        ],
      ),
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: HomePage,
      ),
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: EmptyRouterPage,
        name: 'ProfileRouter',
        children: <AutoRoute>[
          CustomRoute<void>(
            transitionsBuilder: TransitionsBuilders.fadeIn,
            page: ProfilePage,
          ),
          AutoRoute<void>(page: UserPage),
        ],
      ),
    ],
  ),
];
