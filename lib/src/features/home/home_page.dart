import 'package:flutter/material.dart';

abstract class HomePageDelegate {
  void onPressedHome();
}

class HomePage extends StatelessWidget {
  const HomePage({required this.delegate, super.key});

  final HomePageDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: GestureDetector(
          onTap: delegate.onPressedHome,
          child: const Text(
            'HomePage',
          ),
        ),
      ),
    );
  }
}
