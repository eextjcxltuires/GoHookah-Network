import 'package:flutter/material.dart';

class DetailProductCardSchedule extends StatelessWidget {
  const DetailProductCardSchedule({
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'ПН'),
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'ВТ'),
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'СР'),
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'ЧТ'),
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'ПТ'),
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'СБ'),
            DetailProductCardScheduleText(time: '$open_1 - $closed_1', day: 'ВС'),
          ],
        ),
      ),
    );
  }
}

class DetailProductCardScheduleText extends StatelessWidget {
  const DetailProductCardScheduleText({
    Key? key,
    required this.day,
    required this.time,
  }) : super(key: key);

  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.23,
        decoration: BoxDecoration(
          color: const Color(0xFF333333),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // A widget, that displays a day.

            daytext(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),

              // A widget, that displays a time.
              child: timetext(),
            ),
          ],
        ),
      ),
    );
  }

  // A widget, that displays a day.

  Widget daytext() {
    return Text(
      day,
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFFFC107),
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        letterSpacing: 0.38,
      ),
    );
  }

  // A widget, that displays a time.

  Widget timetext() {
    return Text(
      time,
      style: const TextStyle(
        fontFamily: 'SFProTextRegular',
        color: Color(0xFFF6F7FB),
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        letterSpacing: 0.38,
      ),
    );
  }
}
