import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../src.dart';

class MainCoordinator extends BaseCoordinator
    implements ICoordinator, MainPageDelegate {
  final AppRouter appRouter = GetIt.I();

  @override
  void finish() {}

  @override
  Future<void> start() async {
    await appRouter.replaceAll(
      <PageRouteInfo<dynamic>>[
        MainRoute(
          delegate: this,
          children: <PageRouteInfo<dynamic>>[
            HomeCoordinator().build(),
          ],
        ),
      ],
    );

    // homeCoordinator.start();
  }

  @override
  List<BottomNavigationBarItem> get items => <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Users',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ];

  @override
  void onPressedBottomNavItem(int index, TabsRouter router) {
    tryPopTop(router);

    router.setActiveIndex(index);
  }

  Future<void> tryPopTop(TabsRouter tabsRouter) async {
    if (tabsRouter.canPop()) {
      final bool result = await tabsRouter.popTop();

      if (result && tabsRouter.canPop()) {
        tryPopTop(tabsRouter);
      }
    }
  }

  @override
  List<PageRouteInfo> get routes => <PageRouteInfo>[
        UsersCoordinator().build(),
        HomeCoordinator().build(),
        ProfileCoordinator().build(),
      ];
  // final IMainManager _mainManager;
  // final HomeCoordinator _homeFlow;
  // final UsersFlow _usersFlow;
  // final ProfileFlow _profileFlow;

  // void run([int defaultIndex = 1]) {
  //   appRouter.replaceAll(
  //     <PageRouteInfo<dynamic>>[
  //       MainRoute(
  //         onPressedUsers: _onPressedUsers,
  //         onPressedHome: _onPressedHome,
  //         onPressedProfile: _onPressedProfile,
  //         bottomController: _mainManager.bottomController,
  //         children: [HomeRoute(onPressed: _homeFlow.onPressed)],
  //       ),
  //     ],
  //   );

  //   _mainManager.bottomController.stream.listen((int event) {
  //     switch (event) {
  //       case 0:
  //         _usersFlow.run();
  //         UsersFlow().build();
  //         break;
  //       case 1:
  //         _homeFlow.run();
  //         break;
  //       case 2:
  //         _profileFlow.run();
  //         break;
  //       default:
  //     }
  //   });

  //   // _mainManager.bottomController.add(defaultIndex);
  // }

  // void _onPressedUsers() {
  //   _mainManager.bottomController.add(0);
  // }

  // void _onPressedHome() {
  //   _mainManager.bottomController.add(1);
  // }

  // void _onPressedProfile() {
  //   _mainManager.bottomController.add(2);
  // }
}
