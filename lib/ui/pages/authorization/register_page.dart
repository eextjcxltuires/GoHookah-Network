import 'package:application/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';
import 'widgets/authorization_button.dart';
import 'widgets/password_text_form.dart';
import 'widgets/phone_text_form.dart';
import 'widgets/title_page.dart';
import 'components/name_text_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  // Navigation: Transition to Home Page.
  void home(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  // Navigation: Transition to Login Page.
  void login(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      appBar: AppBar(
        title: const TitlePage(title: 'Регистрация'),
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
              children: <Widget>[
                // Text Form: Name.
                NameTextForm(),
                const SizedBox(height: 10.0),

                // Text Form: Phone.
                const PhoneTextForm(),
                const SizedBox(height: 10.0),

                // Text Form: Password.
                const PasswordTextForm(label: 'Пароль'),
                const SizedBox(height: 10.0),

                // Text Form: Confirm Password.
                const PasswordTextForm(label: 'Повторите пароль'),
                const SizedBox(height: 65.0),
              ],
            ),
          ),

          // Lower panel description.
          AuthorizationButton(
            title1: 'Зарегистрироваться',
            title2: 'Войдите!',
            text: 'Есть аккаунт?',
            onPressed1: () => home(context),
            onPressed2: () => login(context),
          ),
        ],
      ),
    );
  }
}
