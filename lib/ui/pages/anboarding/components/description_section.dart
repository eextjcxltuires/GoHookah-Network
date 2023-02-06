import 'package:application/ui/pages/anboarding/widgets/page_widget.dart';
import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  final PageController? controller;

  final Function(int)? onPageChanged;

  const DescriptionSection({
    Key? key,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: onPageChanged,
      controller: controller,
      children: const <Widget>[
        // Widget: description section 1.
        PageWidget(
          image: 'assets/images/logotype_1.png',
          title: 'GohookahClub!',
          description:
              'Проект, созданный любителями кальянной \nкультуры, для удобного поиска заведений \nи магазинов в своем городе.',
        ),

        // Widget: description section 2.
        PageWidget(
          image: 'assets/images/logotype_2.png',
          title: 'Лучшие заведения',
          description:
              'У нас собраны лучшие кальянные заведения\n в твоем городе с информацией о контактах,\n графике работы и кальянными мастерами.',
        ),

        // Widget: description section 3.
        PageWidget(
          image: 'assets/images/logotype_3.png',
          title: 'Магазины',
          description:
              'С помощью приложения найдете лучшие \nкальянные неподалеку от вас и сможите\n забронировать столик.',
        ),
      ],
    );
  }
}
