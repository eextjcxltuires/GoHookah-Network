import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.icon,
    required this.controller,
    this.obscure = false,
    required this.type,
  }) : super(key: key);

  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final bool obscure;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 270.0,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              obscureText: obscure,
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
              ),
              style: const TextStyle(
                fontFamily: 'SFProTextRegular',
                color: Color(0xFFF6F7FB),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.41,
              ),
            ),
          ),
          Icon(
            icon,
            color: const Color(0xFF767676),
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
