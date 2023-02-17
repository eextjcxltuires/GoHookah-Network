import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NetworkWidget extends StatelessWidget {
  const NetworkWidget({
    Key? key,
    required this.text,
    required this.link,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String link;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 0, 0, 0),
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          link,
          color: const Color(0xFFF6F7FB),
          height: 21.0,
          width: 18.0,
        ),
      ),
    );
  }
}
