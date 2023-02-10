import 'package:flutter/material.dart';
import 'components/authorization_lower_panel_description.dart';
import 'components/auhorization_logotype.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Stack(
        alignment: Alignment.center,
        children: const <Widget>[
          // daisctiption:
          // a picture is displayed (logotype).

          AuthorizationLogotype(),

          // description:
          // Lower panel.

          AuthorizationLowerPanelDescription(),
        ],
      ),
    );
  }
}
