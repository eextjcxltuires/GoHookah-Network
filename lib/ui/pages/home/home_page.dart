import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // description:
          // Text: Title Text.
          const Padding(
            padding: EdgeInsets.fromLTRB(30.0, 60.0, 16.0, 0),
            child: Text(
              'Главная',
              style: TextStyle(
                fontFamily: 'SFProDisplayBold',
                color: Color(0xFFF6F7FB),
                fontSize: 34.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.37,
              ),
            ),
          ),
          const SizedBox(height: 10.0),

          // description:
          // Text Form: Search.

          TextFieldWidget(
            hint: 'Поиск',
            icon: Icons.search_outlined,
            controller: search,
            type: TextInputType.text,
          ),
          const SizedBox(height: 18.0),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
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
      padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
