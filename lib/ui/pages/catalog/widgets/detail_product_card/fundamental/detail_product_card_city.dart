import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailProductCardCity extends StatelessWidget {
  const DetailProductCardCity({
    Key? key,
    required this.city,
    required this.rate,
  }) : super(key: key);

  final String city;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // A widget, that displays a title.

          text(),

          // A widget, that displays a rate (rating text).

          if (rate >= 1) DetailProductCardRate(rate: rate),
        ],
      ),
    );
  }

  // A widget, that displays a title.

  Widget text() {
    return Text(
      city,
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFC5C5C5),
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        letterSpacing: -0.24,
      ),
    );
  }
}

class DetailProductCardRate extends StatelessWidget {
  const DetailProductCardRate({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // A widget, that displays a rate (rating text).
        text(),

        // A widget, that displays a icon.

        icon(),
      ],
    );
  }

  // A widget, that displays a rate (rating text).

  Widget text() {
    return Text(
      rate.toString(),
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFC5C5C5),
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        letterSpacing: -0.24,
      ),
    );
  }

  // A widget, that displays a icon.

  Widget icon() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 6.0, 0),
      child: SvgPicture.asset(
        'assets/icons/star.svg',
        color: const Color(0xFFC5C5C5),
        height: 15.0,
        width: 15.0,
      ),
    );
  }
}
