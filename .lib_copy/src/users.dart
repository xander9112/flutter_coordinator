import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key, this.onUserPressed}) : super(key: key);

  final Function(int id)? onUserPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users page')),
      body: ListView(
        children: List<Widget>.generate(
          5,
          (int index) {
            return ListTile(
              title: Text('User $index'),
              onTap: () => onUserPressed?.call(index + 1),
            );
          },
        ),
      ),
    );
  }
}
