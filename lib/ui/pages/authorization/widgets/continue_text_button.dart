import 'package:flutter/material.dart';

class ContinueTextButton extends StatelessWidget {
  final String title;

  final Function()? onPressed;

  const ContinueTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'SFProTextBold',
          color: Color(0xFF767676),
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}
