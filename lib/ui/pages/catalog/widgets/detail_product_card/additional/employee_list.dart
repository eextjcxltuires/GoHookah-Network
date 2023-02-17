import 'package:application/ui/pages/catalog/widgets/employee_widget.dart';
import 'package:flutter/material.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({
    Key? key,
    required this.master,
    required this.time,
  }) : super(key: key);

  final List master;
  final List time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return EmployeeWidget(
                    name: master[index],
                    time: time[index],
                  );
                },
                itemCount: time.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
