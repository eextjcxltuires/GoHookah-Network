import 'package:application/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class AuthorizationButton extends StatelessWidget {
  final Function()? onPressed1;
  final Function()? onPressed2;

  final String text;
  final String title1;
  final String title2;

  const AuthorizationButton({
    Key? key,
    required this.onPressed1,
    required this.onPressed2,
    required this.text,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Button: Authorization Button.
            ButtonWidget(
              onPressed: onPressed1,
              title: title1,
              color: const Color(0xFFFFC107),
            ),
            const SizedBox(height: 10.0),

            // Text Button.
            TextButtonWidget(
              onPressed: onPressed2,
              text: text,
              title: title2,
            ),
          ],
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  final String text;
  final String title;

  const TextButtonWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Text: Description.
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'SFProTextRegular',
            color: Color(0xFFF6F7FB),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),

        // Button: Transition on the Next Page.
        TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'SFProTextRegular',
              color: Color(0xFFFFC107),
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.41,
            ),
          ),
        ),
      ],
    );
  }
}
