import 'package:application/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class LowerPanelDescription extends StatelessWidget {
  const LowerPanelDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Description: Title and Description Text.
            const DescriptionText(),

            // Button: Login.
            ButtonWidget(
              onPressed: () {},
              color: const Color(0xFFFFC107),
              title: 'Войти',
            ),
            const SizedBox(height: 10.0),

            // Button: Sign Up.
            ButtonWidget(
              onPressed: () {},
              color: const Color(0xFF767676),
              title: 'Зарегистрироваться',
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        // Text: Title.
        Text(
          'Профиль',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'SFProDisplayBold',
            color: Color(0xFFF6F7FB),
            fontSize: 34.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.27,
          ),
        ),
        SizedBox(height: 15.0),

        // Text: Description.
        Text(
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
        SizedBox(height: 45.0),
      ],
    );
  }
}
