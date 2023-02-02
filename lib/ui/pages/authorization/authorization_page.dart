import 'package:flutter/material.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Center(
        child: Text('It is Authorization page.', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
