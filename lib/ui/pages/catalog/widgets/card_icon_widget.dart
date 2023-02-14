import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardIconWidget extends StatelessWidget {
  const CardIconWidget({
    Key? key,
    required this.onTap,
    required this.link,
  }) : super(key: key);

  final Function()? onTap;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        link,
        height: 26.0,
        width: 21.0,
        color: const Color(0xFFFFC107),
      ),
    );
  }
}
