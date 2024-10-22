import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  ProfilePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF01153E),
      ),
      body: Center(
        child: Text(
          'Hello, $username',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
