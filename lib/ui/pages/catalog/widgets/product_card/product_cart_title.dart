import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCardTitle extends StatelessWidget {
  const ProductCardTitle({
    Key? key,
    required this.title,
    required this.rate,
  }) : super(key: key);

  final String title;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Description:
          // Text: Title Text.

          Expanded(
            // A widget, that displays a title.

            child: text(),
          ),

          // Description:
          // Text: Rate (Rating) Text.

          if (rate > 1) ProductCardRate(rate: rate),
        ],
      ),
    );
  }

  // A widget, that displays a title.

  Widget text() {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFFFC107),
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        letterSpacing: -0.41,
      ),
    );
  }
}

class ProductCardRate extends StatelessWidget {
  const ProductCardRate({
    Key? key,
    required this.rate,
  }) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // A widget, that displays a text.

        text(),

        // A widget, that displays a icon.

        icon(),
      ],
    );
  }

  // A widget, that displays a text.

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
      padding: const EdgeInsets.fromLTRB(4.0, 0, 0, 0),
      child: SvgPicture.asset(
        'assets/icons/star.svg',
        color: const Color(0xFFC5C5C5),
        height: 15.0,
        width: 15.0,
      ),
    );
  }
}
