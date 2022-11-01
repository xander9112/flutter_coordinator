import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

import '../../src.dart';

class HomeCoordinator extends BaseCoordinator
    implements ICoordinator, HomePageDelegate {
  final AppRouter appRouter = GetIt.I();

  PageRouteInfo get _route => HomeRoute(delegate: this);

  PageRouteInfo build() {
    return _route;
  }

  @override
  Future<void> start() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 666));

    appRouter.navigate(_route);
  }

  @override
  void onPressedHome() {
    ProfileCoordinator().start();
  }
}
