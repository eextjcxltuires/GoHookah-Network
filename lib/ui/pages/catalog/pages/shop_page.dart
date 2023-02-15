import 'package:application/ui/pages/catalog/widgets/product_card/product_card_widget.dart';
import 'package:flutter/material.dart';

import 'detail_shop_page.dart';
import 'map_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

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

  void detail(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DetailShopPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 1,
            itemBuilder: (context, index) {
              return ProductCardWidget(
                title: 'Hookah Market',
                rate: 4,
                street: 'ул.Ольшевского, д.24, пом.7а-1-97',
                open_1: '11:00',
                open_2: '11:00',
                open_3: '11:00',
                open_4: '11:00',
                open_5: '11:00',
                open_6: '11:00',
                open_7: '11:00',
                closed_1: '21:00',
                closed_2: '21:00',
                closed_3: '21:00',
                closed_4: '21:00',
                closed_5: '21:00',
                closed_6: '21:00',
                closed_7: '21:00',
                phone: '+375 (29) 378-77-47',
                onMap: () => map(context),
                onTap: () => detail(context),
              );
            },
          ),
        ),
      ],
    );
  }
}
