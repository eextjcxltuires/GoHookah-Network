import 'package:flutter/material.dart';

class ProductCardStreet extends StatelessWidget {
  const ProductCardStreet({
    Key? key,
    required this.street,
  }) : super(key: key);

  final String street;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 0, 0),
      child: Text(
        street,
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
}
