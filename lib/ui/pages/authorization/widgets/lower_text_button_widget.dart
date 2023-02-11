import 'package:flutter/material.dart';

class LowerTextButtonWidget extends StatelessWidget {
  const LowerTextButtonWidget({
    Key? key,
    required this.part1,
    required this.part2,
    required this.onPressed,
  }) : super(key: key);

  final String part1;
  final String part2;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
          children: [
            // description:
            // text 1.

            part1text(),

            // description:
            // text 2.

            part2text(),
          ],
        ),
      ),
    );
  }

  // the widget, that displays the text 1.

  TextSpan part1text() => TextSpan(
        text: part1,
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      );

  // the widget, that displays the title text 2.

  TextSpan part2text() => TextSpan(
        text: part2,
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFFFC107),
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      );
}
