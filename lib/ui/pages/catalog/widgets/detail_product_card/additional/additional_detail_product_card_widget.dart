import 'package:flutter/material.dart';
import 'data.dart';
import 'detail_product_card_employee.dart';

class AdditionalDetailProductCardWidget extends StatelessWidget {
  const AdditionalDetailProductCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentDate = DateTime.now();

    final Data data = Data();

    final master1 = data.name1;
    final master2 = data.name2;
    final master3 = data.name3;
    final master4 = data.name4;
    final master5 = data.name5;
    final master6 = data.name6;
    final master7 = data.name7;

    final time = data.time;

    return Column(
      children: <Widget>[
        if (currentDate.weekday == 1) DetailProductCardEmployee(master: master1, time: time),
        if (currentDate.weekday == 2) DetailProductCardEmployee(master: master2, time: time),
        if (currentDate.weekday == 3) DetailProductCardEmployee(master: master3, time: time),
        if (currentDate.weekday == 4) DetailProductCardEmployee(master: master4, time: time),
        if (currentDate.weekday == 5) DetailProductCardEmployee(master: master5, time: time),
        if (currentDate.weekday == 6) DetailProductCardEmployee(master: master6, time: time),
        if (currentDate.weekday == 7) DetailProductCardEmployee(master: master7, time: time),
      ],
    );
  }
}
