import 'package:flutter/material.dart';

class NameTextForm extends StatelessWidget {
  NameTextForm({Key? key}) : super(key: key);

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFF6F7FB),
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.41,
      ),
      cursorColor: const Color(0xFFF6F7FB),
      controller: textController,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF767676)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF767676)),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD10000)),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD10000)),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF767676)),
        ),
        labelText: 'Имя',
        labelStyle: TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}
