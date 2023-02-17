import 'package:application/ui/pages/catalog/widgets/more_text_widget.dart';
import 'package:flutter/material.dart';

class DetailProductCardDescription extends StatelessWidget {
  const DetailProductCardDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (description.isNotEmpty)
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0),
            child: MoreTextWidget(
              text: description,
              sizeText: 17.0,
              sizeMore: 17.0,
              sizeLess: 17.0,
              colorClickableText: const Color(0xFFFFC107),
              colorText: const Color(0xFFF6F7FB),
              colorMore: const Color(0xFFFFC107),
              colorLess: const Color(0xFFFFC107),
            ),
          ),
      ],
    );
  }
}
