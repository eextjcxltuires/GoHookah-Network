import 'package:application/ui/pages/authorization/authorization_page.dart';
import 'package:application/ui/pages/home/home_page.dart';
import 'package:application/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class LowerPanelButtons extends StatelessWidget {
  const LowerPanelButtons({Key? key}) : super(key: key);

  // Navigation: Transition to Authorization Page.
  void authorization(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AuthorizationPage()),
    );
  }

  // Navigation: Transition to Home Page.
  void home(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Button: Authorization.
          ButtonWidget(
            onPressed: () => authorization(context),
            title: 'Авторизация',
            color: const Color(0xFFFFC107),
          ),
          const SizedBox(height: 10.0),

          // Button: Continue.
          ButtonWidget(
            onPressed: () => home(context),
            title: 'Продолжить',
            color: const Color(0xFF767676),
          ),
        ],
      ),
    );
  }
}
