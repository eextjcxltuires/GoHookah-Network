import 'package:flutter/material.dart';

import 'contact_list.dart';
import 'network_list.dart';

class DetailProductCardContact extends StatelessWidget {
  const DetailProductCardContact({
    Key? key,
    required this.street,
    required this.phone,
    required this.site,
    required this.vkontakte,
    required this.instagram,
    required this.facebook,
  }) : super(key: key);

  final String street;
  final String phone;
  final String site;
  final String vkontakte;
  final String instagram;
  final String facebook;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // A widget, that displays a title.

          contacttitle(),

          // A widget, that displays a list.

          ContactList(street: street, phone: phone, site: site),

          // A widget, that displays a title.

          networktitle(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // A widget, that displays a list.

                NetworkList(vkontakte: vkontakte, instagram: instagram, facebook: facebook),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // A widget, that displays a title.

  Widget contacttitle() {
    return const Text(
      'Контактная информация:',
      style: TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFF6F7FB),
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
        letterSpacing: 0.35,
      ),
    );
  }

  // A widget, that displays a title.

  Widget networktitle() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
      child: Text(
        'Социальные сети:',
        style: TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFF767676),
          fontWeight: FontWeight.w400,
          fontSize: 18.0,
          letterSpacing: 0.35,
        ),
      ),
    );
  }
}
