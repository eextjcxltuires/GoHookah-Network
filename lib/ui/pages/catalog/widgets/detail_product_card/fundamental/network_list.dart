import 'package:application/ui/pages/catalog/widgets/network_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NetworkList extends StatelessWidget {
  const NetworkList({
    Key? key,
    required this.vkontakte,
    required this.instagram,
    required this.facebook,
  }) : super(key: key);

  final String vkontakte;
  final String instagram;
  final String facebook;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
          child: NetworkWidget(
            link: 'assets/icons/vk.svg',
            text: vkontakte,
            onTap: () {
              launchUrl(Uri(scheme: 'HTTPS', path: vkontakte));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
          child: NetworkWidget(
            link: 'assets/icons/instagram.svg',
            text: instagram,
            onTap: () {
              launchUrl(Uri(scheme: 'HTTPS', path: instagram));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
          child: NetworkWidget(
            link: 'assets/icons/facebook.svg',
            text: facebook,
            onTap: () {
              launchUrl(Uri(scheme: 'HTTPS', path: facebook));
            },
          ),
        ),
      ],
    );
  }
}
