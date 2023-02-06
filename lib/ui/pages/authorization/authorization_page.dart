import 'package:flutter/material.dart';

import 'components/logotype.dart';
import 'components/lower_panel_description.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Stack(
        alignment: Alignment.center,
        children: const <Widget>[
          // Image: Logotype.
          Logotype(),

          // Lower panel description.
          LowerPanelDescription(),
        ],
      ),
    );
  }
}
