import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class CodeTextForm extends StatelessWidget {
  const CodeTextForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerificationCode(
      keyboardType: TextInputType.number,
      length: 6,

      // Functions that perform certain actions.
      // To describe later, after I write the authorization.
      onCompleted: (value) {},
      onEditing: (value) {},
    );
  }
}
