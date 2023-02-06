import 'package:application/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'forgot_password_page.dart';
import 'register_page.dart';
import 'widgets/authorization_button.dart';
import 'widgets/continue_text_button.dart';
import 'widgets/phone_text_form.dart';
import 'widgets/password_text_form.dart';
import 'widgets/title_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // Navigation: Transition to Register Page.
  void register(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  // Navigation: Transition to Home Page.
  void home(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  // Navigation: Transition to Forgot Password Page.
  void recovery(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
    );
  }

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
                const PasswordTextForm(label: 'Пароль'),
                const SizedBox(height: 25.0),

                // Text Button.
                ContinueTextButton(
                  onPressed: () => recovery(context),
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
            onPressed1: () => home(context),
            onPressed2: () => register(context),
          ),
        ],
      ),
    );
  }
}
