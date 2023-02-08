import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 60.0, 16.0, 0),
            child: Text(
              'Главная',
              style: TextStyle(
                fontFamily: 'SFProDisplayBold',
                color: Color(0xFFF6F7FB),
                fontSize: 34.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.37,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
