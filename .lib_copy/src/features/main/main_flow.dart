import 'dart:async';

import 'package:auto_route/auto_route.dart';

import 'package:get_it/get_it.dart';

import '../../src.dart';
import '../../users_flow.dart';
import '../features.dart';

class MainFlow {
  MainFlow({
    AppRouter? appRouter,
    ProfileFlow? profileFlow,
    UsersFlow? usersFlow,
  })  : _profileFlow = profileFlow ?? GetIt.I(),
        _usersFlow = usersFlow ?? GetIt.I(),
        _appRouter = appRouter ?? GetIt.I();

  final AppRouter _appRouter;

  final ProfileFlow _profileFlow;
  final UsersFlow _usersFlow;

  final StreamController<int> _bottomController = StreamController<int>();

  void run() {
    _bottomController.sink.add(2);

    _appRouter.replace(
      MainRoute(
        onPressedBottomBar: onPressedBottomBar,
        homeIndex: _bottomController.stream,
        children: <PageRouteInfo<dynamic>>[HomeRoute()],
      ),
    );
  }

  void onPressedBottomBar(int index) {
    _bottomController.sink.add(index);

    switch (index) {
      case 0:
        _appRouter.replaceAll([const CalendarRoute()]);
        break;
      case 1:
        _appRouter.replaceAll([const ServicesRoute()]);
        break;
      case 2:
        _appRouter.replaceAll([HomeRoute()]);
        break;
      case 3:
        _usersFlow.navToUsers();
        break;
      default:
        _profileFlow.onPressedProfile();
    }
  }
}
