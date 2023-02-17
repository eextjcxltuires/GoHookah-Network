import 'package:application/ui/pages/authorization/registration_page.dart';
import 'package:application/ui/pages/catalog/catalog_page.dart';
import 'package:application/ui/widgets/button_widget.dart';
import 'package:application/ui/pages/authorization/widgets/lower_text_button_widget.dart';
import 'package:flutter/material.dart';

class LoginLowerPanelDescription extends StatelessWidget {
  const LoginLowerPanelDescription({Key? key}) : super(key: key);

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

  void registration(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegistrationPage()),
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
            title: 'Войти',
          ),
          const SizedBox(height: 20.0),

          // description:
          // custom button widget.

          ButtonWidget(
            onPressed: () {},
            color: const Color(0xFF767676),
            title: 'Войти c помощью Google',
          ),
          const SizedBox(height: 20.0),

          // description:
          // Lower text button widget.

          LowerTextButtonWidget(
            onPressed: () => registration(context),
            part1: 'Нет аккаунта? ',
            part2: ' Зарегистрируйтесь!',
          ),
        ],
      ),
    );
  }
}
