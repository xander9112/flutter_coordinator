// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'auth_router.dart';

class _$AuthRouter extends RootStackRouter {
  _$AuthRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UnAuthEmptyRouter.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const UnAuthPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: LoginPage(
          delegate: args.delegate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PinCodeCreateRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeCreateRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: PinCodeCreatePage(
          delegate: args.delegate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PinCodeEnterRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeEnterRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: PinCodeEnterPage(
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
          UnAuthEmptyRouter.name,
          path: '/',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          PinCodeCreateRoute.name,
          path: '/pin-code-create-page',
        ),
        RouteConfig(
          PinCodeEnterRoute.name,
          path: '/pin-code-enter-page',
        ),
      ];
}

/// generated route for
/// [UnAuthPage]
class UnAuthEmptyRouter extends PageRouteInfo<void> {
  const UnAuthEmptyRouter()
      : super(
          UnAuthEmptyRouter.name,
          path: '/',
        );

  static const String name = 'UnAuthEmptyRouter';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    required LoginPageDelegate delegate,
    Key? key,
  }) : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    required this.delegate,
    this.key,
  });

  final LoginPageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{delegate: $delegate, key: $key}';
  }
}

/// generated route for
/// [PinCodeCreatePage]
class PinCodeCreateRoute extends PageRouteInfo<PinCodeCreateRouteArgs> {
  PinCodeCreateRoute({
    required PinCodePageDelegate delegate,
    Key? key,
  }) : super(
          PinCodeCreateRoute.name,
          path: '/pin-code-create-page',
          args: PinCodeCreateRouteArgs(
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'PinCodeCreateRoute';
}

class PinCodeCreateRouteArgs {
  const PinCodeCreateRouteArgs({
    required this.delegate,
    this.key,
  });

  final PinCodePageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'PinCodeCreateRouteArgs{delegate: $delegate, key: $key}';
  }
}

/// generated route for
/// [PinCodeEnterPage]
class PinCodeEnterRoute extends PageRouteInfo<PinCodeEnterRouteArgs> {
  PinCodeEnterRoute({
    required PinCodePageDelegate delegate,
    Key? key,
  }) : super(
          PinCodeEnterRoute.name,
          path: '/pin-code-enter-page',
          args: PinCodeEnterRouteArgs(
            delegate: delegate,
            key: key,
          ),
        );

  static const String name = 'PinCodeEnterRoute';
}

class PinCodeEnterRouteArgs {
  const PinCodeEnterRouteArgs({
    required this.delegate,
    this.key,
  });

  final PinCodePageDelegate delegate;

  final Key? key;

  @override
  String toString() {
    return 'PinCodeEnterRouteArgs{delegate: $delegate, key: $key}';
  }
}
