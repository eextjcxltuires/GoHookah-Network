import 'package:application/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import 'change_password_page.dart';
import 'components/code_text_form.dart';
import 'widgets/continue_text_button.dart';
import 'widgets/title_page.dart';

class CodePage extends StatelessWidget {
  const CodePage({Key? key}) : super(key: key);

  // Navigation: Transition to Change Password Page.
  void change(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChangePasswordPage()),
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
        alignment: Alignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 100.0, 16.0, 0),
            child: Column(
              children: <Widget>[
                // Description Text.
                const DescriptionText(),
                const SizedBox(height: 25.0),

                // code..
                const CodeTextForm(),
                const SizedBox(height: 15.0),

                // text button.
                ContinueTextButton(
                  title: 'Код не пришел? Отправить еще раз.',
                  onPressed: () {},
                ),
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
                onPressed: () => change(context),
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
    return Column(
      children: const <Widget>[
        // Text: Title Text.
        Text(
          'Верификация, ведите код',
          style: TextStyle(
            fontFamily: 'SFProDisplayBold',
            color: Color(0xFFF6F7FB),
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.38,
          ),
        ),
        SizedBox(height: 15.0),

        // Text: Description Text.
        Text(
          'Мы отправили на ваш номер телефона код для восстановления пароля.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SFProTextBold',
            color: Color(0xFF767676),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),
      ],
    );
  }
}
