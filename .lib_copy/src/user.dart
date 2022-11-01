import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({required this.id, Key? key}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User page id: $id')),
    );
  }
}
