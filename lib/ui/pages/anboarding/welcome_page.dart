import 'package:flutter/material.dart';
import 'components/description_section.dart';
import 'components/indicator.dart';
import 'components/lower_panel_buttons.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int indicator = 0;
  late PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  void animation(int page) {
    return setState(() {
      indicator = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 160.0, 16.0, 40.0),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // description:
            // the image and the corresponding text will be displayed. there is an animation.

            DescriptionSection(
              onPageChanged: (int page) => animation(page),
              controller: controller,
            ),

            // description:
            // indicator, that reacts to changes.

            Indicator(
              indicator: indicator,
            ),

            // description:
            // lower panel..

            // to go to the home page or, the authorization
            // and authentication page.

            const LowerPanelButtons(),
          ],
        ),
      ),
    );
  }
}
