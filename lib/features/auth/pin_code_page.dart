import 'package:flutter/material.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage({
    Key? key,
    this.onPinCodeEnter,
  }) : super(key: key);

  final Function(String pinCode)? onPinCodeEnter;

  void _onPinCodeEnter() {
    onPinCodeEnter?.call('1234');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('PinCode Page'),
            ElevatedButton(
              onPressed: _onPinCodeEnter,
              child: const Text('EnterPinCode'),
            ),
          ],
        ),
      ),
    );
  }
}
