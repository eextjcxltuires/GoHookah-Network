import 'package:application/ui/pages/catalog/widgets/detail_product_card/fundamental/fundamental_detail_product_card_widget.dart';
import 'package:flutter/material.dart';

class DetailShopPage extends StatelessWidget {
  const DetailShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B2B2B),
        title: title(),
        elevation: 0.6,
        iconTheme: const IconThemeData(
          color: Color(0xFFFFC107),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                FundamentalDetailProductCardWidget(
                  title: 'Hookah Market',
                  rate: 4,
                  city: 'Беларусь, Минск',
                  description:
                      'Давно искали интернет-магазин, где можно недорого купить кальян и аксессуары для кальяна с доставкой в Минске? Вы попали по адресу! \n\nНаш интернет-магазин — это широкий ассортимент кальянов и аксессуаров самых разных категорий!',
                  street: 'ул. Ольшевского, д.24, пом.7а-1-97',
                  phone: '+375 (29) 378-77-47',
                  site: 'hookahmarketminsk.by',
                  vkontakte: 'vk.com',
                  instagram: 'instagram.com',
                  facebook: 'facebook.com',
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget title() {
    return const Text(
      'Hookah Market',
      style: TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFFFC107),
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        letterSpacing: -0.41,
      ),
    );
  }
}
