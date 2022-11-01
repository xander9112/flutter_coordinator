import 'package:auto_route/auto_route.dart';
import 'package:flutter_flow/src/src.dart';
import 'package:get_it/get_it.dart';

class ProfileCoordinator extends BaseCoordinator
    implements ICoordinator, ProfilePageDelegate {
  final AppRouter _appRouter = GetIt.I();

  PageRouteInfo get _route => ProfileRouter(
        children: <PageRouteInfo<dynamic>>[
          ProfileRoute(delegate: this),
        ],
      );

  PageRouteInfo build() {
    return _route;
  }

  @override
  void start() {
    _appRouter.navigate(_route);
  }

  @override
  void onPressedInfo() {
    _appRouter.push(const InfoRoute());
  }

  @override
  void onPressedSignOut() {
    // authCoordinator.onSignOut();
  }

  @override
  void onPressedUser(int id) {
    UsersCoordinator().onPressedUser(id);
  }

  // void _onPressedSignOut() {
  //
  // }

  // void _onPressedInfo() {

  // }

  // void _onPressedUser(int id) {
  //   _usersFlow.onPressedUser(id);
  // }
  // ProfileFlow({
  //   AppRouter? appRouter,
  //   AuthFlow? authFlow,
  //   UsersFlow? usersFlow,
  // })  : _appRouter = appRouter ?? GetIt.I(),
  //       _usersFlow = usersFlow ?? GetIt.I(),
  //       _authFlow = authFlow ?? GetIt.I();

  // final AuthFlow _authFlow;
  // final UsersFlow _usersFlow;
  // final AppRouter _appRouter;

  // void run() {
  //   _appRouter.replaceAll(<PageRouteInfo<dynamic>>[
  //     ProfileRoute(
  //       onPressedSignOut: _onPressedSignOut,
  //       onPressedUser: _onPressedUser,
  //       onPressedInfo: _onPressedInfo,
  //     )
  //   ]);
  // }

}
