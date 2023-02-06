import 'package:application/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:application/ui/widgets/button_widget.dart';

import 'widgets/title_page.dart';
import 'widgets/password_text_form.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  // Navigation: Transition to Home Page.
  void home(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      appBar: AppBar(
        title: const TitlePage(title: 'Восстановление'),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFFFFC107),
        ),
        backgroundColor: const Color(0xFF2B2B2B),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                // Description Text.
                DescriptionText(),
                SizedBox(height: 15.0),

                // Text Form: Password.
                PasswordTextForm(label: 'Пароль'),
                SizedBox(height: 10.0),

                // Text Form: Confirm Password.
                PasswordTextForm(label: 'Повторите пароль'),
              ],
            ),
          ),

          // Widget Button: Continue Button.
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(
                color: const Color(0xFFFFC107),
                title: 'Продолжить',
                onPressed: () => home(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Придумайте новый пароль для того, чтобы войти на сервис.',
      style: TextStyle(
        fontFamily: 'SFProTextBold',
        color: Color(0xFF767676),
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.41,
      ),
    );
  }
}
