import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.link,
    required this.description,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String link;
  final String description;
  final String title;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // A widget, that displays a list.

            icon(),

            // A widget, that displays a title.

            titletext(),

            // A widget, that displays a text.

            Expanded(
              child: text(),
            ),
          ],
        ),
      ],
    );
  }

  // A widget, that displays a icon.

  Widget icon() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
      child: SvgPicture.asset(
        link,
        color: const Color(0xFF767676),
        height: 20.0,
        width: 16.0,
      ),
    );
  }

  // A widget, that displays a title.

  Widget titletext() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 4.0, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFF767676),
          fontWeight: FontWeight.w400,
          fontSize: 17.0,
          letterSpacing: -0.41,
        ),
      ),
    );
  }

  // A widget, that displays a text.

  Widget text() {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        description,
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontWeight: FontWeight.w400,
          fontSize: 17.0,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}
