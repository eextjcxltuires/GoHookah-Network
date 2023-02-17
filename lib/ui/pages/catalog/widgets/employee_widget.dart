import 'package:flutter/material.dart';

class EmployeeWidget extends StatelessWidget {
  const EmployeeWidget({
    Key? key,
    required this.name,
    required this.time,
  }) : super(key: key);

  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.34,
        decoration: BoxDecoration(
          color: const Color(0xFF333333),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // A widget, that displays a image.

            image(),

            // A widget, that displays a name.

            nametext(),

            // A widget, that displays a time.

            timetext(),
          ],
        ),
      ),
    );
  }

  // A widget, that displays a image.

  Widget image() => Image.asset(
        'assets/images/frame.png',
        height: 60.0,
        width: 60.0,
      );

  // A widget, that displays a name.

  Widget nametext() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
        child: Text(
          name,
          style: const TextStyle(
            fontFamily: 'SFProTextRegular',
            color: Color(0xFFFFC107),
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
            letterSpacing: -0.41,
          ),
        ),
      );

  // A widget, that displays a time.

  Widget timetext() => Padding(
        padding: const EdgeInsets.fromLTRB(0, 4.0, 0, 0),
        child: Text(
          time,
          style: const TextStyle(
            fontFamily: 'SFProTextRegular',
            color: Color(0xFFF6F7FB),
            fontWeight: FontWeight.w400,
            fontSize: 15.0,
            letterSpacing: -0.24,
          ),
        ),
      );
}
