import 'package:flutter/material.dart';
import 'ui/pages/anboarding/welcome_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: const WelcomePage(),
    );
  }
}
