import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PageWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Column(
        children: <Widget>[
          // Image: Logotype (Icon).
          Image.asset(image),
          const SizedBox(height: 24.0),

          // Text: Title Text.
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'SFProDisplayBold',
              color: Color(0xFFF6F7FB),
              fontSize: 34.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.37,
            ),
          ),
          const SizedBox(height: 12.0),

          // Text: Description Text.
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'SFProTextRegular',
              color: Color(0xFFF6F7FB),
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.24,
            ),
          ),
        ],
      ),
    );
  }
}
