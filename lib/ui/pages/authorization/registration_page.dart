import 'package:flutter/material.dart';
import 'components/registration/registration_lower_panel_description.dart';
import 'widgets/text_field_widget.dart';
import 'widgets/top_panel_desciption.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController mail = TextEditingController();
    TextEditingController word1 = TextEditingController();
    TextEditingController word2 = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50.0, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // description:
              // custom top-panel (with description text) widget.

              const TopPanelDescription(
                title: 'Здравствуй!',
                description:
                    'Прежде, чем пользоваться всеми возможностями сервиса, вам стоит зарегистрироваться.',
              ),

              // description:
              // Widget: Text Field.

              TextFieldWidget(
                type: TextInputType.name,
                controller: name,
                icon: Icons.person_outline,
                hint: 'Имя',
              ),

              // description:
              // Widget: Text Field.

              TextFieldWidget(
                type: TextInputType.emailAddress,
                controller: mail,
                icon: Icons.mail_outline,
                hint: 'Почта',
              ),

              // description:
              // Widget: Text Field.

              TextFieldWidget(
                type: TextInputType.visiblePassword,
                controller: word1,
                icon: Icons.lock_outline,
                obscure: true,
                hint: 'Пароль',
              ),

              // description:
              // Widget: Text Field.

              TextFieldWidget(
                type: TextInputType.visiblePassword,
                controller: word2,
                icon: Icons.lock_outline,
                obscure: true,
                hint: 'Повторите пароль',
              ),
              const SizedBox(height: 10.0),

              // description:
              // description text.

              description(),
              const SizedBox(height: 100.0),

              // description:
              // Lower panel.

              const RegistrationLowerPanelDescription(),
            ],
          ),
        ),
      ),
    );
  }

  // the widget, that displays the text description.

  Widget description() => const Text(
        'Нажимая кнопку, Вы принимаете условия пользовательского соглашения и договоров.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFFFC107),
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.08,
        ),
      );
}
