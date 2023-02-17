import 'package:flutter/material.dart';

class DetailProductCardTitle extends StatelessWidget {
  const DetailProductCardTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFFFC107),
          fontWeight: FontWeight.w700,
          fontSize: 21.0,
          letterSpacing: 0.37,
        ),
      ),
    );
  }
}
