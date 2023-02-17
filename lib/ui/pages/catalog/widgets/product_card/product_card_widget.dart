import 'package:flutter/material.dart';
import 'product_card_description.dart';
import 'product_card_image.dart';
import 'product_card_street.dart';
import 'product_cart_title.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.street,
    required this.title,
    required this.phone,
    required this.rate,
    required this.onTap,
    required this.open_1,
    required this.closed_1,
    required this.open_2,
    required this.closed_2,
    required this.open_3,
    required this.closed_3,
    required this.open_4,
    required this.closed_4,
    required this.open_5,
    required this.closed_5,
    required this.open_6,
    required this.closed_6,
    required this.open_7,
    required this.closed_7,
    required this.onMap,
  }) : super(key: key);

  final String street;
  final String title;
  final String phone;
  final int rate;
  final String open_1;
  final String closed_1;
  final String open_2;
  final String closed_2;
  final String open_3;
  final String closed_3;
  final String open_4;
  final String closed_4;
  final String open_5;
  final String closed_5;
  final String open_6;
  final String closed_6;
  final String open_7;
  final String closed_7;
  final Function()? onTap;
  final Function()? onMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        clipBehavior: Clip.antiAlias,
        color: const Color(0xFF333333),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Description:
            // Image: Image Hookah Place feat. Shop.

            ProductCardImage(onTap: onTap),

            // Description:
            // Text: Title Text.

            ProductCardTitle(title: title, rate: rate),

            // Description:
            // Text: Street Text.

            ProductCardStreet(street: street),

            // Description:
            // Text: Description Text.

            ProductCardDescription(
              open_1: open_1,
              open_2: open_2,
              open_3: open_3,
              open_4: open_4,
              open_5: open_5,
              open_6: open_6,
              open_7: open_7,
              closed_1: closed_1,
              closed_2: closed_2,
              closed_3: closed_3,
              closed_4: closed_4,
              closed_5: closed_5,
              closed_6: closed_6,
              closed_7: closed_7,
              phone: phone,
              onTap: onMap!,
            ),
          ],
        ),
      ),
    );
  }
}
