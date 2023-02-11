import 'widgets/top_panel_desciption.dart';
import 'components/login/login_lower_panel_description.dart';
import 'package:flutter/material.dart';
import 'widgets/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController mail = TextEditingController();
    TextEditingController word = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // description:
              // custom top-panel (with description text) widget.

              const TopPanelDescription(
                title: 'С возвращением!',
                description:
                    'Войдите в аккаунт или зарегистрируйтесь, чтобы пользоваться всеми возможностями сервиса.',
              ),

              // description:
              // Widget: Text Field.

              TextFieldWidget(
                type: TextInputType.emailAddress,
                controller: mail,
                icon: Icons.mail_outline,
                hint: 'Почта',
              ),

              // description:
              // Widget: Text Field.

              TextFieldWidget(
                type: TextInputType.visiblePassword,
                controller: word,
                icon: Icons.lock_outline,
                obscure: true,
                hint: 'Пароль',
              ),
              const SizedBox(height: 10.0),

              // description:

              // text button (forgot password),
              // that takes you to the password recovery page.

              button(),
              const SizedBox(height: 100.0),

              // description:
              // Lower panel.

              const LoginLowerPanelDescription(),
            ],
          ),
        ),
      ),
    );
  }

  // the widget, that displays the text button.

  Widget button() => Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20.0, 0),
          child: TextButton(
            child: const Text(
              'Забыли пароль?',
              style: TextStyle(
                fontFamily: 'SFProTextRegular',
                color: Color(0xFF767676),
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.08,
              ),
            ),
            onPressed: () {},
          ),
        ),
      );
}
