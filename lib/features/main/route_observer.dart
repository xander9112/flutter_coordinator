import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

class MainRouteObserver extends AutoRouterObserver {
  MainRouteObserver({this.onChange});

  final Function(TabPageRoute route)? onChange;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {}

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    onChange?.call(route);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    onChange?.call(route);
  }
}
