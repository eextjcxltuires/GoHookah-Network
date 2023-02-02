import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Center(
        child: Text('It is Home page.', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
