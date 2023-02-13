import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.link,
    required this.text,
    required this.onChange,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String link;
  final String text;
  final Function() onChange;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton.icon(
        icon: SvgPicture.asset(
          link,
          height: 18.0,
          width: 18.0,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF333333),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 0,
        ),
        onPressed: onChange,
        label: Text(
          text,
          style: const TextStyle(
            fontFamily: 'SFProDisplayRegular',
            color: Color(0xFFF6F7FB),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),
      ),
    );
  }
}
