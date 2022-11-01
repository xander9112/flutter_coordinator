import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

import 'app_router/neo_router.dart';

class AppRouter {
  AppRouter({NeoRouter? router}) : _router = router ?? GetIt.I();

  final NeoRouter _router;

  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) =>
      _router.replace(route, onFailure: onFailure);

  Future<void> replaceAll(
    List<PageRouteInfo> routes, {
    OnNavigationFailure? onFailure,
  }) =>
      _router.replaceAll(
        routes,
        onFailure: onFailure,
      );

  Future<bool> pop() => _router.pop();

  Future<T?> push<T extends Object?>(PageRouteInfo route,
          {OnNavigationFailure? onFailure}) =>
      _router.push(route, onFailure: onFailure);

  void popUntilRoot() {
    return _router.popUntilRoot();
  }

  Future<void> navigateNamed(String path) {
    return _router.navigateNamed(path);
  }

  Future<void> pushNamed(String path) {
    return _router.pushNamed(path);
  }

  Future<void> navigate(PageRouteInfo<dynamic> route) {
    return _router.navigate(route);
  }
}
