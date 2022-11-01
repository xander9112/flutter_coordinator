import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    required this.onPressedBottomBar,
    required this.homeIndex,
    Key? key,
  }) : super(key: key);

  final Function(int index) onPressedBottomBar;
  final Stream<int> homeIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: StreamBuilder<int>(
        stream: homeIndex,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return Container(
            color: Colors.black.withOpacity(0.1),
            height: 76.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.calendar_today,
                      color: snapshot.data == 0 ? Colors.blueAccent : null,
                    ),
                    onPressed: () => onPressedBottomBar(0),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.room_service,
                      color: snapshot.data == 1 ? Colors.blueAccent : null,
                    ),
                    onPressed: () => onPressedBottomBar(1),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: snapshot.data == 2 ? Colors.blueAccent : null,
                    ),
                    onPressed: () => onPressedBottomBar(2),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.people,
                      color: snapshot.data == 3 ? Colors.blueAccent : null,
                    ),
                    onPressed: () => onPressedBottomBar(3),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: snapshot.data == 4 ? Colors.blueAccent : null,
                    ),
                    onPressed: () => onPressedBottomBar(4),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
