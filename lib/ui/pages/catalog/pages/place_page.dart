import 'package:application/ui/pages/catalog/widgets/product_card/product_card_widget.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({Key? key}) : super(key: key);

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
                title: 'HP Lounge Bar Yakuba Kolasa',
                rate: 4,
                street: 'ул. Якуба Коласа, 42',
                open_1: '12:00',
                open_2: '12:00',
                open_3: '12:00',
                open_4: '12:00',
                open_5: '12:00',
                open_6: '12:00',
                open_7: '12:00',
                closed_1: '6:00',
                closed_2: '6:00',
                closed_3: '6:00',
                closed_4: '6:00',
                closed_5: '6:00',
                closed_6: '6:00',
                closed_7: '6:00',
                phone: '+375 (29) 341-01-01',
                onMap: () {},
                onTap: () {},
              );
            },
          ),
        ),
      ],
    );
  }
}
