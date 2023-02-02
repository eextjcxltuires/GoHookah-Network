import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final Color color;
  final String title;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.06,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        textColor: Colors.white,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'SFProDisplayRegular',
            color: Color(0xFF2B2B2B),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),
      ),
    );
  }
}
