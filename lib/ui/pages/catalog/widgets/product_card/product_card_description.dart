import 'package:flutter/material.dart';
import 'product_card_contact.dart';
import 'product_card_schedule.dart';

class ProductCardDescription extends StatelessWidget {
  const ProductCardDescription({
    Key? key,
    required this.open_1,
    required this.closed_1,
    required this.open_2,
    required this.closed_2,
    required this.open_3,
    required this.closed_3,
    required this.open_4,
    required this.closed_4,
    required this.open_5,
    required this.closed_5,
    required this.open_6,
    required this.closed_6,
    required this.open_7,
    required this.closed_7,
    required this.phone,
    required this.onTap,
  }) : super(key: key);

  final String open_1;
  final String closed_1;
  final String open_2;
  final String closed_2;
  final String open_3;
  final String closed_3;
  final String open_4;
  final String closed_4;
  final String open_5;
  final String closed_5;
  final String open_6;
  final String closed_6;
  final String open_7;
  final String closed_7;
  final String phone;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 34.0, 16.0, 34.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Description:
          // Text: Schedule Text.

          ProductCardSchedule(
            open_1: open_1,
            closed_1: closed_1,
            open_2: open_2,
            closed_2: closed_2,
            open_3: open_3,
            closed_3: closed_3,
            open_4: open_4,
            closed_4: closed_4,
            open_5: open_5,
            closed_5: closed_5,
            open_6: open_6,
            closed_6: closed_6,
            open_7: open_7,
            closed_7: closed_7,
          ),

          // Description:
          // Icon feat. Text: Contacts (Information).

          ProductCardContact(
            onTap: onTap,
            phone: phone,
          ),
        ],
      ),
    );
  }
}
