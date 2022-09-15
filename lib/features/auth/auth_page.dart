import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    Key? key,
    this.onSubmit,
  }) : super(key: key);

  final Function(String login, String password)? onSubmit;

  void _onSubmit() {
    onSubmit?.call('login', 'password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Auth Page'),
            ElevatedButton(
              onPressed: _onSubmit,
              child: const Text('LogIn'),
            ),
          ],
        ),
      ),
    );
  }
}
