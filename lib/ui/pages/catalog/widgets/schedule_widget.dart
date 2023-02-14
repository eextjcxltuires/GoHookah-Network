import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({
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
    return verification();
  }

  Widget verification() {
    var currentDate = DateTime.now();

    if (currentDate.weekday == 1) {
      return ScheduleTextWidget(open: open_1, closed: closed_1);
    } else if (currentDate.weekday == 2) {
      return ScheduleTextWidget(open: open_2, closed: closed_2);
    } else if (currentDate.weekday == 3) {
      return ScheduleTextWidget(open: open_3, closed: closed_3);
    } else if (currentDate.weekday == 4) {
      return ScheduleTextWidget(open: open_4, closed: closed_4);
    } else if (currentDate.weekday == 5) {
      return ScheduleTextWidget(open: open_5, closed: closed_5);
    } else if (currentDate.weekday == 6) {
      return ScheduleTextWidget(open: open_6, closed: closed_6);
    } else {
      return ScheduleTextWidget(open: open_7, closed: closed_7);
    }
  }
}

class ScheduleTextWidget extends StatelessWidget {
  const ScheduleTextWidget({
    Key? key,
    required this.open,
    required this.closed,
  }) : super(key: key);

  final String open;
  final String closed;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$open - $closed',
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFF6F7FB),
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
        letterSpacing: -0.24,
      ),
    );
  }
}
