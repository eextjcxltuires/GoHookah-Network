import 'package:flutter/material.dart';

class PasswordTextForm extends StatefulWidget {
  final String label;

  const PasswordTextForm({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  TextEditingController textController = TextEditingController();

  bool isObscure = true;

  RegExp digitValidator = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  bool isAWord = true;

  void setValidator(valid) {
    setState(() {
      isAWord = valid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
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
      obscureText: isObscure,
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
        labelText: widget.label,
        labelStyle: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
        errorText: isAWord ? null : 'Пароль слишком лёгкий.',
        errorStyle: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFD10000),
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
        suffixIcon: IconButton(
          icon: isObscure
              ? const Icon(
                  Icons.visibility_off,
                  color: Color(0xFF767676),
                  size: 18.6,
                )
              : const Icon(
                  Icons.visibility,
                  color: Color(0xFF767676),
                  size: 18.6,
                ),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        ),
      ),
    );
  }
}
