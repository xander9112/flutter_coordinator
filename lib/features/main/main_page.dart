import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    required this.onPressedBottomBar,
    required this.homeIndex,
    Key? key,
    this.onPressedCounter,
    this.onTabChange,
  }) : super(key: key);

  final VoidCallback? onPressedCounter;
  final Function(int index) onPressedBottomBar;
  final Function(TabPageRoute route)? onTabChange;
  final Stream<int> homeIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: StreamBuilder<int>(
        stream: homeIndex,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return BottomNavigationBar(
            onTap: onPressedBottomBar,
            currentIndex: snapshot.data ?? 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Keep',
                icon: Icon(Icons.sunny),
              ),
              BottomNavigationBarItem(
                label: 'Reset',
                icon: Icon(Icons.reset_tv),
              ),
            ],
          );
        },
      ),
    );
  }
}
