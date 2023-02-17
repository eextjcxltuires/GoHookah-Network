import 'package:flutter/material.dart';

class Development extends StatelessWidget {
  const Development({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // image: logotype of the page.

          image(context),

          // text: title text.
          title(),

          // text: description text.
          description(),
        ],
      ),
    );
  }

  // a widget, that displays a picture.

  Widget image(context) => Image.asset(
        'assets/images/image.png',
        height: MediaQuery.of(context).size.height * 0.18,
      );

  // a widget, that displays a title text.

  Widget title() => const Padding(
        padding: EdgeInsets.only(top: 40.0),
        child: Text(
          'Страница находится в разработке..',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SFProDisplayRegular',
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
            fontSize: 22.0,
            letterSpacing: 0.35,
          ),
        ),
      );

  // a widget, that displays a description text.

  Widget description() => const Padding(
        padding: EdgeInsets.only(top: 12.0, left: 25.0, right: 25.0),
        child: Text(
          'Мы постоянно совершенствуем сервис для Вашего пользования. Совсем скоро здесь появятся новые крутые функции!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'SFProTextRegular',
            color: Color(0xFF767676),
            fontWeight: FontWeight.w400,
            fontSize: 17.0,
            letterSpacing: -0.41,
          ),
        ),
      );
}
