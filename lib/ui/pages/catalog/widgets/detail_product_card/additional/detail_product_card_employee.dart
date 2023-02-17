import 'package:application/ui/pages/catalog/widgets/line_widget.dart';
import 'package:flutter/material.dart';

import 'employee_list.dart';

class DetailProductCardEmployee extends StatelessWidget {
  const DetailProductCardEmployee({
    Key? key,
    required this.master,
    required this.time,
  }) : super(key: key);

  final List master;
  final List time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const LineWidget(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // A widget, that displays a title.

              title(),

              // A widget, that displays a list.

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 6.0, 0, 10.0),
                child: EmployeeList(master: master, time: time),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // A widget, that displays a title.

  Widget title() => const Text(
        'Сегодня на смене:',
        style: TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontWeight: FontWeight.w700,
          fontSize: 22.0,
          letterSpacing: 0.35,
        ),
      );
}
