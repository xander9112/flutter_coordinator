import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

import '../../src.dart';

class UsersCoordinator extends BaseCoordinator
    implements ICoordinator, UserPageDelegate, UsersPageDelegate {
  UsersCoordinator({AppRouter? appRouter})
      : _appRouter = appRouter ?? GetIt.I();

  final AppRouter _appRouter;

  // void run() {
  //   _appRouter.replaceAll(<PageRouteInfo<dynamic>>[
  //     UsersRoute(
  //       onPressedUser: onPressedUser,
  //     )
  //   ]);
  // }

  @override
  void onPressedUser(int id) {
    _appRouter.push(UserRoute(id: id, delegate: this));
  }

  PageRouteInfo build() {
    return UsersRouter(
      children: <PageRouteInfo<dynamic>>[
        UsersRoute(delegate: this),
      ],
    );
  }
}
