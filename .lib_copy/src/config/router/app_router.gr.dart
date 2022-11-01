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
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: SplashPage(
          onFinish: args.onFinish,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: AuthPage(
          onSubmit: args.onSubmit,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EnterPinCodeRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPinCodeRouteArgs>(
          orElse: () => const EnterPinCodeRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: EnterPinCodePage(
          key: args.key,
          onPinCodeEnter: args.onPinCodeEnter,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreatePinCodeRoute.name: (routeData) {
      final args = routeData.argsAs<CreatePinCodeRouteArgs>(
          orElse: () => const CreatePinCodeRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: CreatePinCodePage(
          key: args.key,
          onPinCodeEnter: args.onPinCodeEnter,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TempRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const TempPage(),
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
          onPressedBottomBar: args.onPressedBottomBar,
          homeIndex: args.homeIndex,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CalendarRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const CalendarPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ServicesRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const ServicesPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          onPressedButton: args.onPressedButton,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UsersRoute.name: (routeData) {
      final args = routeData.argsAs<UsersRouteArgs>(
          orElse: () => const UsersRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: UsersPage(
          key: args.key,
          onUserPressed: args.onUserPressed,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: ProfilePage(
          key: args.key,
          onPressedLogout: args.onPressedLogout,
          onChangeUsePinCode: args.onChangeUsePinCode,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserRoute.name: (routeData) {
      final args = routeData.argsAs<UserRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: UserPage(
          id: args.id,
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
          SplashRoute.name,
          path: '/splash-page',
        ),
        RouteConfig(
          AuthRoute.name,
          path: '/auth-page',
        ),
        RouteConfig(
          EnterPinCodeRoute.name,
          path: '/enter-pin-code-page',
        ),
        RouteConfig(
          CreatePinCodeRoute.name,
          path: '/create-pin-code-page',
        ),
        RouteConfig(
          TempRoute.name,
          path: '/temp-page',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main-page',
          children: [
            RouteConfig(
              CalendarRoute.name,
              path: 'calendar-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ServicesRoute.name,
              path: 'services-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'home-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              UsersRoute.name,
              path: 'users-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: MainRoute.name,
            ),
            RouteConfig(
              UserRoute.name,
              path: 'user-page',
              parent: MainRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    void Function()? onFinish,
    Key? key,
  }) : super(
          SplashRoute.name,
          path: '/splash-page',
          args: SplashRouteArgs(
            onFinish: onFinish,
            key: key,
          ),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.onFinish,
    this.key,
  });

  final void Function()? onFinish;

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{onFinish: $onFinish, key: $key}';
  }
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    void Function(
      String,
      String,
    )?
        onSubmit,
    Key? key,
  }) : super(
          AuthRoute.name,
          path: '/auth-page',
          args: AuthRouteArgs(
            onSubmit: onSubmit,
            key: key,
          ),
        );

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.onSubmit,
    this.key,
  });

  final void Function(
    String,
    String,
  )? onSubmit;

  final Key? key;

  @override
  String toString() {
    return 'AuthRouteArgs{onSubmit: $onSubmit, key: $key}';
  }
}

/// generated route for
/// [EnterPinCodePage]
class EnterPinCodeRoute extends PageRouteInfo<EnterPinCodeRouteArgs> {
  EnterPinCodeRoute({
    Key? key,
    dynamic Function(String)? onPinCodeEnter,
  }) : super(
          EnterPinCodeRoute.name,
          path: '/enter-pin-code-page',
          args: EnterPinCodeRouteArgs(
            key: key,
            onPinCodeEnter: onPinCodeEnter,
          ),
        );

  static const String name = 'EnterPinCodeRoute';
}

class EnterPinCodeRouteArgs {
  const EnterPinCodeRouteArgs({
    this.key,
    this.onPinCodeEnter,
  });

  final Key? key;

  final dynamic Function(String)? onPinCodeEnter;

  @override
  String toString() {
    return 'EnterPinCodeRouteArgs{key: $key, onPinCodeEnter: $onPinCodeEnter}';
  }
}

/// generated route for
/// [CreatePinCodePage]
class CreatePinCodeRoute extends PageRouteInfo<CreatePinCodeRouteArgs> {
  CreatePinCodeRoute({
    Key? key,
    dynamic Function(String)? onPinCodeEnter,
  }) : super(
          CreatePinCodeRoute.name,
          path: '/create-pin-code-page',
          args: CreatePinCodeRouteArgs(
            key: key,
            onPinCodeEnter: onPinCodeEnter,
          ),
        );

  static const String name = 'CreatePinCodeRoute';
}

class CreatePinCodeRouteArgs {
  const CreatePinCodeRouteArgs({
    this.key,
    this.onPinCodeEnter,
  });

  final Key? key;

  final dynamic Function(String)? onPinCodeEnter;

  @override
  String toString() {
    return 'CreatePinCodeRouteArgs{key: $key, onPinCodeEnter: $onPinCodeEnter}';
  }
}

/// generated route for
/// [TempPage]
class TempRoute extends PageRouteInfo<void> {
  const TempRoute()
      : super(
          TempRoute.name,
          path: '/temp-page',
        );

  static const String name = 'TempRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({
    required dynamic Function(int) onPressedBottomBar,
    required Stream<int> homeIndex,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          path: '/main-page',
          args: MainRouteArgs(
            onPressedBottomBar: onPressedBottomBar,
            homeIndex: homeIndex,
            key: key,
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
  });

  final dynamic Function(int) onPressedBottomBar;

  final Stream<int> homeIndex;

  final Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{onPressedBottomBar: $onPressedBottomBar, homeIndex: $homeIndex, key: $key}';
  }
}

/// generated route for
/// [CalendarPage]
class CalendarRoute extends PageRouteInfo<void> {
  const CalendarRoute()
      : super(
          CalendarRoute.name,
          path: 'calendar-page',
        );

  static const String name = 'CalendarRoute';
}

/// generated route for
/// [ServicesPage]
class ServicesRoute extends PageRouteInfo<void> {
  const ServicesRoute()
      : super(
          ServicesRoute.name,
          path: 'services-page',
        );

  static const String name = 'ServicesRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    void Function()? onPressedButton,
  }) : super(
          HomeRoute.name,
          path: 'home-page',
          args: HomeRouteArgs(
            key: key,
            onPressedButton: onPressedButton,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.onPressedButton,
  });

  final Key? key;

  final void Function()? onPressedButton;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, onPressedButton: $onPressedButton}';
  }
}

/// generated route for
/// [UsersPage]
class UsersRoute extends PageRouteInfo<UsersRouteArgs> {
  UsersRoute({
    Key? key,
    dynamic Function(int)? onUserPressed,
  }) : super(
          UsersRoute.name,
          path: 'users-page',
          args: UsersRouteArgs(
            key: key,
            onUserPressed: onUserPressed,
          ),
        );

  static const String name = 'UsersRoute';
}

class UsersRouteArgs {
  const UsersRouteArgs({
    this.key,
    this.onUserPressed,
  });

  final Key? key;

  final dynamic Function(int)? onUserPressed;

  @override
  String toString() {
    return 'UsersRouteArgs{key: $key, onUserPressed: $onUserPressed}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    void Function()? onPressedLogout,
    dynamic Function(bool)? onChangeUsePinCode,
  }) : super(
          ProfileRoute.name,
          path: 'profile-page',
          args: ProfileRouteArgs(
            key: key,
            onPressedLogout: onPressedLogout,
            onChangeUsePinCode: onChangeUsePinCode,
          ),
        );

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    this.onPressedLogout,
    this.onChangeUsePinCode,
  });

  final Key? key;

  final void Function()? onPressedLogout;

  final dynamic Function(bool)? onChangeUsePinCode;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, onPressedLogout: $onPressedLogout, onChangeUsePinCode: $onChangeUsePinCode}';
  }
}

/// generated route for
/// [UserPage]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({
    required int id,
    Key? key,
  }) : super(
          UserRoute.name,
          path: 'user-page',
          args: UserRouteArgs(
            id: id,
            key: key,
          ),
        );

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{id: $id, key: $key}';
  }
}
