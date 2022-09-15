import 'package:flutter/material.dart';

class KeepPage extends StatelessWidget {
  const KeepPage({Key? key, this.onPressedButton}) : super(key: key);

  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeepPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Keep Page'),
            ElevatedButton(
              onPressed: onPressedButton,
              child: const Text('Open'),
            ),
          ],
        ),
      ),
    );
  }
}
