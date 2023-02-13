import 'package:flutter/material.dart';

class TabBarInstitution extends StatelessWidget {
  const TabBarInstitution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Material(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.95,
          child: TabBar(
            tabs: const [
              Tab(text: 'Кальянные'),
              Tab(text: 'Магазины'),
            ],
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: const Color(0xFFF6F7FB),
            ),
            unselectedLabelColor: const Color(0xFFF6F7FB),
            labelColor: const Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
