import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 0),
      child: Divider(
        color: Color(0xFFC5C5C5),
        height: 0.1,
      ),
    );
  }
}
