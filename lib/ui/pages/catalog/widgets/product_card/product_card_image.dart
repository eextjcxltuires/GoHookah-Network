import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: image(context),
    );
  }

  // A widget, that displays a picture.

  Widget image(context) {
    return Center(
      child: Image.asset(
        'assets/images/image.png',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height * 0.25,
      ),
    );
  }
}
