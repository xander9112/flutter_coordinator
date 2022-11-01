import 'package:flutter/material.dart';

abstract class UsersPageDelegate {
  void onPressedUser(int id);
}

class UsersPage extends StatelessWidget {
  const UsersPage({required this.delegate, super.key});

  final UsersPageDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: ListView(
        children: List<Widget>.generate(
          10,
          (int index) {
            return ListTile(
              title: Text('User id: $index'),
              onTap: () => delegate.onPressedUser(index),
            );
          },
        ),
      ),
    );
  }
}
