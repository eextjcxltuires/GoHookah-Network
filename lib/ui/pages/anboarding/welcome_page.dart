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
  late PageController controller;

  int indicator = 0;

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
            // Description section: logotype, title and description.
            DescriptionSection(
              onPageChanged: (int page) => animation(page),
              controller: controller,
            ),
            // Indicator.
            Indicator(
              indicator: indicator,
            ),

            // Lower panel buttons.
            const LowerPanelButtons(),
          ],
        ),
      ),
    );
  }
}
