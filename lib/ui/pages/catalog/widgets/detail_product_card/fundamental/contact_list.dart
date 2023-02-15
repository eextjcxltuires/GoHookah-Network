import 'package:application/ui/pages/catalog/widgets/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
    required this.street,
    required this.phone,
    required this.site,
  }) : super(key: key);

  final String street;
  final String phone;
  final String site;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
          child: ContactWidget(
            link: 'assets/icons/location_on.svg',
            description: street,
            title: '  Адрес: ',
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          child: ContactWidget(
            link: 'assets/icons/phone.svg',
            description: phone,
            title: ' Телефон: ',
            onTap: () {
              launchUrl(Uri(scheme: 'tel', path: phone));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          child: ContactWidget(
            link: 'assets/icons/network.svg',
            description: site,
            title: ' Сайт: ',
            onTap: () {
              launchUrl(Uri(scheme: 'HTTPS', path: site));
            },
          ),
        ),
      ],
    );
  }
}
