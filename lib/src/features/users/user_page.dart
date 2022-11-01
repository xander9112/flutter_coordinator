import 'package:flutter/material.dart';

abstract class UserPageDelegate {
  void onPressedUser(int id);
}

class UserPage extends StatelessWidget {
  const UserPage({
    required this.id,
    required this.delegate,
    super.key,
  });

  final int id;
  final UserPageDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('User $id'),
          ),
          ListTile(
            title: Text('User id: ${id + 1}'),
            onTap: () => delegate.onPressedUser(id + 1),
          ),
        ],
      ),
    );
  }
}
