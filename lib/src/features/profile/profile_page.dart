import 'package:flutter/material.dart';

abstract class ProfilePageDelegate {
  void onPressedSignOut();
  void onPressedInfo();
  void onPressedUser(int id);
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({required this.delegate, super.key});

  final ProfilePageDelegate delegate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Column(children: <Widget>[
        ListTile(
          title: const Text('Open Info'),
          onTap: delegate.onPressedInfo,
        ),
        ListTile(
          title: const Text('Open User id: 3'),
          onTap: () => delegate.onPressedUser(3),
        ),
        ListTile(
          title: Text(
            'SignOut',
            style: TextStyle(
              color: Theme.of(context).errorColor,
            ),
          ),
          onTap: delegate.onPressedSignOut,
        ),
      ]),
    );
  }
}
