import 'package:application/ui/pages/authorization/registration_page.dart';
import 'package:application/ui/widgets/button_widget.dart';
import 'package:application/ui/pages/authorization/login_page.dart';
import 'package:flutter/material.dart';

class AuthorizationLowerPanelDescription extends StatelessWidget {
  const AuthorizationLowerPanelDescription({Key? key}) : super(key: key);

  // description:

  // the transition function,
  // which allows from one page to another.

  void login(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  // description:

  // the transition function,
  // which allows from one page to another.

  void registration(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegistrationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // description:
                // title text.

                title(),

                // description:
                // description text.

                description(),
              ],
            ),

            // description:
            // custom button widget.

            ButtonWidget(
              onPressed: () => login(context),
              title: 'Войти',
              color: const Color(0xFFFFC107),
            ),
            const SizedBox(height: 10.0),

            // description:
            // custom button widget.

            ButtonWidget(
              onPressed: () => registration(context),
              title: 'Зарегистрироваться',
              color: const Color(0xFF767676),
            ),
          ],
        ),
      ),
    );
  }

  // the widget, that displays the title text.

  Widget title() => const Text(
        'Профиль',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontFamily: 'SFProDisplayBold',
          color: Color(0xFFF6F7FB),
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.27,
        ),
      );

  // the widget, that displays the description text.

  Widget description() => const Padding(
        padding: EdgeInsets.fromLTRB(0, 15.0, 0, 45.0),
        child: Text(
          'Войдите в аккаунт или \nзарегистрируйтесь, чтобы пользоваться \nвсеми возможностями сервиса.',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'SFProDisplayRegular',
            color: Color(0xFF767676),
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),
      );
}
