import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flow/src/src.dart';

part 'neo_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    ...coreRoutes,
    AutoRoute(page: InfoPage),
  ],
)
// extend the generated private router
class NeoRouter extends _$NeoRouter {}
