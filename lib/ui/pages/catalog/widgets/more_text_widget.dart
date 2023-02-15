import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MoreTextWidget extends StatelessWidget {
  const MoreTextWidget({
    Key? key,
    required this.text,
    required this.sizeText,
    required this.sizeMore,
    required this.sizeLess,
    required this.colorText,
    required this.colorMore,
    required this.colorLess,
    required this.colorClickableText,
  }) : super(key: key);

  final String text;
  final double sizeText;
  final double sizeMore;
  final double sizeLess;
  final Color colorText;
  final Color colorMore;
  final Color colorLess;
  final Color colorClickableText;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      style: TextStyle(
        fontFamily: 'SFProTextRegular',
        color: colorText,
        fontWeight: FontWeight.w400,
        fontSize: sizeText,
        letterSpacing: -0.41,
      ),
      moreStyle: TextStyle(
        fontFamily: 'SFProTextRegular',
        fontSize: sizeMore,
        color: colorMore,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.41,
      ),
      lessStyle: TextStyle(
        fontFamily: 'SFProTextRegular',
        fontSize: sizeLess,
        color: colorLess,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.41,
      ),
      trimLines: 5,
      colorClickableText: colorClickableText,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' Дальше',
      trimExpandedText: ' Скрыть',
    );
  }
}
