import 'package:flutter/material.dart';

class WelcomeDescriptionText extends StatelessWidget {
  const WelcomeDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        // Text: Title Text.
        Title(),

        // Text: Description Text.
        Description(),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0),
      child: Text(
        'GoHookah!',
        style: TextStyle(
          fontFamily: 'SFProDisplayBold',
          color: Color(0xFFF6F7FB),
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.37,
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0),
      child: Text(
        'Проект, созданный по кальянной\n культуре, для удобного поиска заведений\n и магазинов в своем городе.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.24,
        ),
      ),
    );
  }
}
