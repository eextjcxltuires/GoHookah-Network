import 'package:application/ui/pages/catalog/widgets/card_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductCardContact extends StatelessWidget {
  const ProductCardContact({
    Key? key,
    required this.onTap,
    required this.phone,
  }) : super(key: key);

  final Function()? onTap;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // A widget, that displays a icon (location).

        location(),

        // A widget, that displays a icon (mobile phone).

        mobilephone(),
      ],
    );
  }

  // A widget, that displays a icon (location).

  Widget location() {
    return CardIconWidget(
      onTap: onTap,
      link: 'assets/icons/location_on.svg',
    );
  }

  // A widget, that displays a icon (mobile phone).

  Widget mobilephone() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
      child: CardIconWidget(
        link: 'assets/icons/phone.svg',
        onTap: () {
          launchUrl(Uri(scheme: 'tel', path: phone));
        },
      ),
    );
  }
}
