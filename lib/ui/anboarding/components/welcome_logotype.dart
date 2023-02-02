import 'package:flutter/material.dart';

class WelcomeLogotype extends StatelessWidget {
  const WelcomeLogotype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),

      // Image: Logotype.
      child: Image.asset('assets/images/logotype.png'),
    );
  }
}
