import 'package:flutter/material.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key, this.onPressedButton}) : super(key: key);

  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ResetPage'),
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
