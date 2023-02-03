import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Center(
        child: Text('It is Login page.', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
