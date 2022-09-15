// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: AuthPage(
          key: args.key,
          onSubmit: args.onSubmit,
        ),
      );
    },
    PinCodeRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeRouteArgs>(
          orElse: () => const PinCodeRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PinCodePage(
          key: args.key,
          onPinCodeEnter: args.onPinCodeEnter,
        ),
      );
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return AdaptivePage<void>(
        routeData: routeData,
        child: MainPage(
          onPressedBottomBar: args.onPressedBottomBar,
          homeIndex: args.homeIndex,
          key: args.key,
          onPressedCounter: args.onPressedCounter,
          onTabChange: args.onTabChange,
        ),
      );
    },
    KeepRouter.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ResetRouter.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    KeepRoute.name: (routeData) {
      final args =
          routeData.argsAs<KeepRouteArgs>(orElse: () => const KeepRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: KeepPage(
          key: args.key,
          onPressedButton: args.onPressedButton,
        ),
      );
    },
    CounterRoute.name: (routeData) {
      final args = routeData.argsAs<CounterRouteArgs>(
          orElse: () => const CounterRouteArgs());
      return AdaptivePage<void>(
        routeData: routeData,
        child: CounterPage(
          key: args.key,
          onPressedCounter: args.onPressedCounter,
        ),
      );
    },
    ResetRoute.name: (routeData) {
      final args = routeData.argsAs<ResetRouteArgs>(
          orElse: () => const ResetRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: ResetPage(
          key: args.key,
          onPressedButton: args.onPressedButton,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
        RouteConfig(
          PinCodeRoute.name,
          path: '/pin-code-page',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            RouteConfig(
              KeepRouter.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  KeepRoute.name,
                  path: '',
                  parent: KeepRouter.name,
                ),
                RouteConfig(
                  CounterRoute.name,
                  path: 'counter-page',
                  parent: KeepRouter.name,
                ),
              ],
            ),
            RouteConfig(
              ResetRouter.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  ResetRoute.name,
                  path: '',
                  parent: ResetRouter.name,
                ),
                RouteConfig(
                  CounterRoute.name,
                  path: 'counter-page',
                  parent: ResetRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    Key? key,
    dynamic Function(
      String,
      String,
    )?
        onSubmit,
  }) : super(
          AuthRoute.name,
          path: '/auth-page',
          args: AuthRouteArgs(
            key: key,
            onSubmit: onSubmit,
          ),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.onSubmit,
  });

  final Key? key;

  final dynamic Function(
    String,
    String,
  )? onSubmit;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onSubmit: $onSubmit}';
  }
}

/// generated route for
/// [PinCodePage]
class PinCodeRoute extends PageRouteInfo<PinCodeRouteArgs> {
  PinCodeRoute({
    Key? key,
    dynamic Function(String)? onPinCodeEnter,
  }) : super(
          PinCodeRoute.name,
          path: '/pin-code-page',
          args: PinCodeRouteArgs(
            key: key,
            onPinCodeEnter: onPinCodeEnter,
          ),
        );

  static const String name = 'PinCodeRoute';
}

class PinCodeRouteArgs {
  const PinCodeRouteArgs({
    this.key,
    this.onPinCodeEnter,
  });

  final Key? key;

  final dynamic Function(String)? onPinCodeEnter;

  @override
  String toString() {
    return 'PinCodeRouteArgs{key: $key, onPinCodeEnter: $onPinCodeEnter}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({
    required dynamic Function(int) onPressedBottomBar,
    required Stream<int> homeIndex,
    Key? key,
    void Function()? onPressedCounter,
    dynamic Function(TabPageRoute)? onTabChange,
    List<PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          path: '/main-page',
          args: MainRouteArgs(
            onPressedBottomBar: onPressedBottomBar,
            homeIndex: homeIndex,
            key: key,
            onPressedCounter: onPressedCounter,
            onTabChange: onTabChange,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({
    required this.onPressedBottomBar,
    required this.homeIndex,
    this.key,
    this.onPressedCounter,
    this.onTabChange,
  });

  final dynamic Function(int) onPressedBottomBar;

  final Stream<int> homeIndex;

  final Key? key;

  final void Function()? onPressedCounter;

  final dynamic Function(TabPageRoute)? onTabChange;

  @override
  String toString() {
    return 'MainRouteArgs{onPressedBottomBar: $onPressedBottomBar, homeIndex: $homeIndex, key: $key, onPressedCounter: $onPressedCounter, onTabChange: $onTabChange}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class KeepRouter extends PageRouteInfo<void> {
  const KeepRouter({List<PageRouteInfo>? children})
      : super(
          KeepRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'KeepRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ResetRouter extends PageRouteInfo<void> {
  const ResetRouter({List<PageRouteInfo>? children})
      : super(
          ResetRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'ResetRouter';
}

/// generated route for
/// [KeepPage]
class KeepRoute extends PageRouteInfo<KeepRouteArgs> {
  KeepRoute({
    Key? key,
    void Function()? onPressedButton,
  }) : super(
          KeepRoute.name,
          path: '',
          args: KeepRouteArgs(
            key: key,
            onPressedButton: onPressedButton,
          ),
        );

  static const String name = 'KeepRoute';
}

class KeepRouteArgs {
  const KeepRouteArgs({
    this.key,
    this.onPressedButton,
  });

  final Key? key;

  final void Function()? onPressedButton;

  @override
  String toString() {
    return 'KeepRouteArgs{key: $key, onPressedButton: $onPressedButton}';
  }
}

/// generated route for
/// [CounterPage]
class CounterRoute extends PageRouteInfo<CounterRouteArgs> {
  CounterRoute({
    Key? key,
    void Function()? onPressedCounter,
  }) : super(
          CounterRoute.name,
          path: 'counter-page',
          args: CounterRouteArgs(
            key: key,
            onPressedCounter: onPressedCounter,
          ),
        );

  static const String name = 'CounterRoute';
}

class CounterRouteArgs {
  const CounterRouteArgs({
    this.key,
    this.onPressedCounter,
  });

  final Key? key;

  final void Function()? onPressedCounter;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key, onPressedCounter: $onPressedCounter}';
  }
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<ResetRouteArgs> {
  ResetRoute({
    Key? key,
    void Function()? onPressedButton,
  }) : super(
          ResetRoute.name,
          path: '',
          args: ResetRouteArgs(
            key: key,
            onPressedButton: onPressedButton,
          ),
        );

  static const String name = 'ResetRoute';
}

class ResetRouteArgs {
  const ResetRouteArgs({
    this.key,
    this.onPressedButton,
  });

  final Key? key;

  final void Function()? onPressedButton;

  @override
  String toString() {
    return 'ResetRouteArgs{key: $key, onPressedButton: $onPressedButton}';
  }
}
