import 'package:flutter/material.dart';

class DetailProductCardImage extends StatelessWidget {
  const DetailProductCardImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/image.png',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height * 0.25,
      ),
    );
  }
}
