import 'package:application/ui/pages/home/pages/filter_page.dart';
import 'package:application/ui/pages/home/pages/map_page.dart';
import 'package:application/ui/pages/home/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class PanelButton extends StatelessWidget {
  const PanelButton({Key? key}) : super(key: key);

  // description:

  // the transition function,
  // which allows from one page to another.

  void map(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapPage()),
    );
  }

  // description:

  // the transition function,
  // which allows from one page to another.

  void filter(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FilterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonWidget(
            link: 'assets/icons/explore.svg',
            text: 'Карта',
            onChange: () => map(context),
            height: 0.05,
            width: 0.45,
          ),
          ButtonWidget(
            link: 'assets/icons/tune.svg',
            text: 'Фильтры',
            onChange: () => filter(context),
            height: 0.05,
            width: 0.45,
          ),
        ],
      ),
    );
  }
}
