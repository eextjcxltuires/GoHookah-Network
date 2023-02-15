import 'package:application/ui/pages/catalog/widgets/detail_product_card/fundamental/fundamental_detail_product_card_widget.dart';
import 'package:flutter/material.dart';

class DetailPlacePage extends StatelessWidget {
  const DetailPlacePage({Key? key}) : super(key: key);

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
                  title: 'HP Lounge Bar Yakuba Kolasa',
                  rate: 4,
                  city: 'Беларусь, Минск',
                  description:
                      'HookahPlace™ – самая крупная сеть кальянных заведений в мире. \n\n«HookahPlace Lounge Bar» на Якуба Коласа – кальянная с уникальным форматом отдыха, включающим в себя профессиональную и слаженную работу всех подразделений. \n\nВ кальянной «HookahPlace Lounge Bar»  на Якуба Коласа тщательно подобранный кальянный парк, который позволит учесть вкусы и предпочтения наших гостей. В команду кальянных мастеров набраны только настоящие специалисты, которые посвятят каждого гостя в кальянную культуру.',
                  street: 'ул. Якуба Коласа, 42',
                  phone: '+375 (29) 341-01-01',
                  site: 'hookah-place.by',
                  vkontakte: 'vk.com/hookahplace_minsk_kolasa',
                  instagram: 'instagram.com/hookahplace_kolasa',
                  facebook: 'facebook.com/hookahplace_kolasa',
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
      'HP Lounge Bar Yakuba Kolasa',
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
