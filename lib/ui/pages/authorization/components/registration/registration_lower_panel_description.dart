import 'package:application/ui/pages/authorization/login_page.dart';
import 'package:application/ui/pages/authorization/widgets/lower_text_button_widget.dart';
import 'package:application/ui/pages/catalog/catalog_page.dart';
import 'package:application/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class RegistrationLowerPanelDescription extends StatelessWidget {
  const RegistrationLowerPanelDescription({Key? key}) : super(key: key);

  // description:

  // the transition function,
  // which allows from one page to another.

  void catalog(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CatalogPage()),
    );
  }

  // description:

  // the transition function,
  // which allows from one page to another.

  void login(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: <Widget>[
          // description:
          // custom button widget.

          ButtonWidget(
            onPressed: () => catalog(context),
            color: const Color(0xFFFFC107),
            title: 'Зарегистрироваться',
          ),
          const SizedBox(height: 20.0),

          // description:
          // Lower text button widget.

          LowerTextButtonWidget(
            onPressed: () => login(context),
            part1: 'Есть аккаунт? ',
            part2: ' Войдите!',
          ),
        ],
      ),
    );
  }
}
