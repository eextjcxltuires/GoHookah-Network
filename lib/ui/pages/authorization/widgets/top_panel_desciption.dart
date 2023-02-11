import 'package:flutter/material.dart';

class TopPanelDescription extends StatelessWidget {
  const TopPanelDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // description:
          // title text.

          titletext(),

          // description:
          // description text.

          descriptiontext(),
        ],
      ),
    );
  }

  // the widget, that displays the title text.

  Widget titletext() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'SFProDisplayBold',
            color: Color(0xFFF6F7FB),
            fontSize: 34.0,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.27,
          ),
        ),
      );

  // the widget, that displays the description text.

  Widget descriptiontext() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 60.0),
        child: Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'SFProDisplayRegular',
            color: Color(0xFF767676),
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),
      );
}
