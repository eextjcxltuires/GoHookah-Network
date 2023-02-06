import 'package:flutter/material.dart';

class PhoneTextForm extends StatefulWidget {
  const PhoneTextForm({Key? key}) : super(key: key);

  @override
  State<PhoneTextForm> createState() => _PhoneTextFormState();
}

class _PhoneTextFormState extends State<PhoneTextForm> {
  TextEditingController textController = TextEditingController();

  RegExp digitValidator = RegExp("[0-9]+");
  bool isANumber = true;

  void setValidator(valid) {
    setState(() {
      isANumber = valid;
    });
  }

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
      onChanged: (inputValue) {
        if (inputValue.isEmpty || digitValidator.hasMatch(inputValue)) {
          setValidator(true);
        } else {
          setValidator(false);
        }
      },
      maxLength: 12,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF767676)),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF767676)),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD10000)),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD10000)),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF767676)),
        ),
        labelText: 'Телефон',
        labelStyle: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
        errorText: isANumber ? null : 'Только цифры!',
        errorStyle: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFD10000),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}
