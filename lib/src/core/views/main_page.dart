import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class MainPageDelegate {
  List<PageRouteInfo<dynamic>> get routes;
  List<BottomNavigationBarItem> get items;
  void onPressedBottomNavItem(int index, TabsRouter router);
}

class MainPage extends StatelessWidget {
  const MainPage({required this.delegate, super.key});

  final MainPageDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: delegate.routes,
      lazyLoad: false,
      homeIndex: 1,
      builder: (
        BuildContext context,
        Widget child,
        Animation<double> animation,
      ) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: FadeTransition(opacity: animation, child: child),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            items: delegate.items,
            onTap: (int index) {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }

              delegate.onPressedBottomNavItem.call(index, tabsRouter);
            },
          ),
        );
      },
    );
  }
}
