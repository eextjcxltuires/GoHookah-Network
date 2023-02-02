import 'package:flutter/material.dart';

import '../../widgets/button_widget.dart';

class WelcomePanelButtons extends StatelessWidget {
  const WelcomePanelButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Button: Authorization.
          ButtonWidget(
            onPressed: () {},
            color: const Color(0xFFFFC107),
            title: 'Авторизация',
          ),
          const SizedBox(height: 10.0),

          // Button: Continue.
          ButtonWidget(
            onPressed: () {},
            color: const Color(0xFF767676),
            title: 'Продолжить',
          ),
        ],
      ),
    );
  }
}
