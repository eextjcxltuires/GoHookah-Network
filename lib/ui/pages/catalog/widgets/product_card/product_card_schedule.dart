import 'package:application/ui/pages/catalog/widgets/schedule_widget.dart';
import 'package:flutter/material.dart';

class ProductCardSchedule extends StatelessWidget {
  const ProductCardSchedule({
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: const Color(0xFF2B2B2B),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
        child: ScheduleWidget(
          open_1: open_1,
          open_2: open_2,
          open_3: open_3,
          open_4: open_4,
          open_5: open_5,
          open_6: open_6,
          open_7: open_7,
          closed_1: closed_1,
          closed_2: closed_2,
          closed_3: closed_3,
          closed_4: closed_4,
          closed_5: closed_5,
          closed_6: closed_6,
          closed_7: closed_7,
        ),
      ),
    );
  }
}
