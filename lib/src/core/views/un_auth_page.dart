import 'package:flutter/material.dart';

class UnAuthPage extends StatelessWidget {
  const UnAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/bg.png'),
          ),
        ),
      ),
    );
  }
}
