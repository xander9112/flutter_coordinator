import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, this.onPressedButton}) : super(key: key);

  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            FlutterLogo(size: 96.0),
          ],
        ),
      ),
    );
  }
}
