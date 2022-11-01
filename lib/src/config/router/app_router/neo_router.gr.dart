// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'neo_router.dart';

class _$NeoRouter extends RootStackRouter {
  _$NeoRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UnAuthRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const UnAuthPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: MainPage(
          delegate: args.delegate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InfoRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const InfoPage(),
      );
    },
    MainLoader.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const UnAuthPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UsersRouter.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      final args = routeData.argsAs<HomeRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: HomePage(
          delegate: args.delegate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRouter.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UsersRoute.name: (routeData) {
      final args = routeData.argsAs<UsersRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: UsersPage(
          delegate: args.delegate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteArgs>();
      return AdaptivePage<void>(
        routeData: routeData,
        child: UserPage(
          id: args.id,
          delegate: args.delegate,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: ProfilePage(
          delegate: args.delegate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          UnAuthRoute.name,
          path: '/',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            RouteConfig(
              MainLoader.name,
              path: 'un-auth-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              UsersRouter.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  UsersRoute.name,
                  path: 'users-page',
                  parent: UsersRouter.name,
                ),
                RouteConfig(
                  UserRoute.name,
                  path: 'user-page',
                  parent: UsersRouter.name,
                ),
              ],
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  ProfileRoute.name,
                  path: 'profile-page',
                  parent: ProfileRouter.name,
                ),
                RouteConfig(
                  UserRoute.name,
                  path: 'user-page',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
        ),
        RouteConfig(
          InfoRoute.name,
          path: '/info-page',
        ),
      ];
}

/// generated route for
/// [UnAuthPage]
class UnAuthRoute extends PageRouteInfo<void> {
  const UnAuthRoute()
      : super(
          UnAuthRoute.name,
          path: '/',
        );

  static const String name = 'UnAuthRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({
    required MainPageDelegate delegate,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          path: '/main-page',
          args: MainRouteArgs(
            delegate: delegate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({
    required this.delegate,
    this.key,
  });

  final MainPageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{delegate: $delegate, key: $key}';
  }
}

/// generated route for
/// [InfoPage]
class InfoRoute extends PageRouteInfo<void> {
  const InfoRoute()
      : super(
          InfoRoute.name,
          path: '/info-page',
        );

  static const String name = 'InfoRoute';
}

/// generated route for
/// [UnAuthPage]
class MainLoader extends PageRouteInfo<void> {
  const MainLoader()
      : super(
          MainLoader.name,
          path: 'un-auth-page',
        );

  static const String name = 'MainLoader';
}

/// generated route for
/// [EmptyRouterPage]
class UsersRouter extends PageRouteInfo<void> {
  const UsersRouter({List<PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'UsersRouter';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    required HomePageDelegate delegate,
    Key? key,
  }) : super(
          HomeRoute.name,
          path: 'home-page',
          args: HomeRouteArgs(
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    required this.delegate,
    this.key,
  });

  final HomePageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{delegate: $delegate, key: $key}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [UsersPage]
class UsersRoute extends PageRouteInfo<UsersRouteArgs> {
  UsersRoute({
    required UsersPageDelegate delegate,
    Key? key,
  }) : super(
          UsersRoute.name,
          path: 'users-page',
          args: UsersRouteArgs(
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'UsersRoute';
}

class UsersRouteArgs {
  const UsersRouteArgs({
    required this.delegate,
    this.key,
  });

  final UsersPageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'UsersRouteArgs{delegate: $delegate, key: $key}';
  }
}

/// generated route for
/// [UserPage]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({
    required int id,
    required UserPageDelegate delegate,
    Key? key,
  }) : super(
          UserRoute.name,
          path: 'user-page',
          args: UserRouteArgs(
            id: id,
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({
    required this.id,
    required this.delegate,
    this.key,
  });

  final int id;

  final UserPageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{id: $id, delegate: $delegate, key: $key}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    required ProfilePageDelegate delegate,
    Key? key,
  }) : super(
          ProfileRoute.name,
          path: 'profile-page',
          args: ProfileRouteArgs(
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    required this.delegate,
    this.key,
  });

  final ProfilePageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{delegate: $delegate, key: $key}';
  }
}
