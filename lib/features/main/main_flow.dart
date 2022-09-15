import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_flow/features/main/counter/counter_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../router/app_router.dart';

class MainFlow {
  MainFlow({
    AppRouter? appRouter,
  }) : _appRouter = appRouter ?? GetIt.I<AppRouter>();

  final AppRouter _appRouter;

  final StreamController<int> _bottomController = StreamController<int>();

  final CounterCubit _counterCubit = GetIt.I<CounterCubit>();

  List<PageRouteInfo<dynamic>> get routes => <PageRouteInfo<dynamic>>[
        KeepRouter(children: <PageRouteInfo<dynamic>>[
          KeepRoute(onPressedButton: _onPressedOpenButton),
        ]),
        ResetRouter(children: <PageRouteInfo<dynamic>>[
          ResetRoute(onPressedButton: _onPressedOpenButton),
        ]),
      ];

  void run() {
    int initialIndex = 0;

    if (_counterCubit.state.type == CounterType.reset) {
      initialIndex = 1;
    }

    _bottomController.sink.add(initialIndex);

    _appRouter.replace(
      MainRoute(
        onTabChange: _onTabChange,
        onPressedBottomBar: onPressedBottomBar,
        homeIndex: _bottomController.stream,
        children: <PageRouteInfo<dynamic>>[
          routes.elementAt(initialIndex),
        ],
      ),
    );
  }

  void onPressedBottomBar(int index) {
    _bottomController.sink.add(index);

    if (index == 0) {
      _counterCubit.updateType(CounterType.keep);
    } else if (index == 1) {
      _counterCubit.updateType(CounterType.reset);
    }

    _appRouter.navigate(routes.elementAt(index));
  }

  void onPressedCounter() {
    _counterCubit.increment();
  }

  void _onPressedOpenButton() {
    if (_counterCubit.state.type == CounterType.reset) {
      _counterCubit.reset();
    }

    _appRouter.navigate(CounterRoute(onPressedCounter: onPressedCounter));
  }

  void _onTabChange(TabPageRoute route) {
    switch (route.name) {
      case KeepRoute.name:
        _counterCubit.updateType(CounterType.keep);
        break;
      case ResetRoute.name:
        _counterCubit.updateType(CounterType.reset);
        break;
      default:
    }
  }
}
