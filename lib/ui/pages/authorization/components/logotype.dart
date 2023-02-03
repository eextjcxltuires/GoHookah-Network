import 'package:flutter/material.dart';

class Logotype extends StatelessWidget {
  const Logotype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 160.0, 16.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/logotype_1.png'),
          ),
        ],
      ),
    );
  }
}
