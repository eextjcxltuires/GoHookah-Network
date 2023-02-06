import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  final String title;

  const TitlePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'SFProTextBold',
        color: Color(0xFFF6F7FB),
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.41,
      ),
    );
  }
}
