import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    Key? key,
    required this.hint,
    required this.icon,
    required this.controller,
    required this.type,
  }) : super(key: key);

  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.95,
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: type,
        cursorColor: const Color(0xFF767676),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: 'SFProTextRegular',
            color: Color(0xFF767676),
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
          prefixIcon: Icon(
            icon,
            color: const Color(0xFF767676),
            size: 25.0,
          ),
        ),
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}
