import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Center(
        child: Text('It is Forgot Password page.', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
