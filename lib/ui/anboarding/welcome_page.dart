import 'package:flutter/material.dart';

import 'components/welcome_description_text.dart';
import 'components/welcome_logotype.dart';
import 'components/welcome_panel_buttons.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 160.0, 0, 40.0),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // Description.
              Column(
                children: const <Widget>[
                  // Logotype: Image.
                  WelcomeLogotype(),

                  // Description: Title + Description Text.
                  WelcomeDescriptionText(),
                ],
              ),

              // lower panel buttons.
              const WelcomePanelButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
