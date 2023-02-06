import 'package:flutter/material.dart';

import 'widgets/authorization_button.dart';
import 'widgets/continue_text_button.dart';
import 'widgets/phone_text_form.dart';
import 'widgets/password_text_form.dart';
import 'widgets/title_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      appBar: AppBar(
        title: const TitlePage(title: 'Вход'),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFFFFC107),
        ),
        backgroundColor: const Color(0xFF2B2B2B),
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 0),
            child: Column(
              children: <Widget>[
                // Text Form: Phone.
                const PhoneTextForm(),
                const SizedBox(height: 10.0),

                // Text Form: Password.
                const PasswordTextForm(),
                const SizedBox(height: 25.0),

                // Text Button.
                ContinueTextButton(
                  onPressed: () {},
                  title: 'Забыли пароль?',
                ),
              ],
            ),
          ),

          // Lower panel description.
          AuthorizationButton(
            title1: 'Войти',
            title2: 'Зарегистрируйтесь!',
            text: 'Нет аккаунта?',
            onPressed1: () {},
            onPressed2: () {},
          ),
        ],
      ),
    );
  }
}
