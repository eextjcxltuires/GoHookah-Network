import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int indicator;

  const Indicator({
    Key? key,
    required this.indicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => Container(
          margin: const EdgeInsets.fromLTRB(0, 8.0, 5.0, 0),
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: indicator == index ? const Color(0xFFFFC107) : const Color(0xFF767676),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
