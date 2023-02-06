import 'package:flutter/material.dart';

import 'code_page.dart';
import 'register_page.dart';
import 'widgets/authorization_button.dart';
import 'widgets/phone_text_form.dart';
import 'widgets/title_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  // Navigation: Transition to Code Page.
  void code(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CodePage()),
    );
  }

  // Navigation: Transition to Register Page.
  void register(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
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
                // Text: Description.
                DescriptionText(),
                SizedBox(height: 15.0),

                // Text Form: Phone.
                PhoneTextForm(),
              ],
            ),
          ),

          // Lower panel description.
          AuthorizationButton(
            title2: 'Зарегистрируйтесь!',
            title1: 'Продолжить',
            text: 'Нет аккаунта?',
            onPressed2: () => register(context),
            onPressed1: () => code(context),
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
      'Введите Ваш номер телефона, и мы отправим на него код для восстановления пароля.',
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
