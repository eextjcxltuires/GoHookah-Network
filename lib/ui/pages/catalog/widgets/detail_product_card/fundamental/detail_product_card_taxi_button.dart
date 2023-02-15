import 'package:flutter/material.dart';

class DetailProductCardTaxiButton extends StatelessWidget {
  const DetailProductCardTaxiButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 0),
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.95,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                color: Color(0xFFFFC107),
              ),
              backgroundColor: const Color(0xFF333333),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Заказать такси',
              style: TextStyle(
                fontFamily: 'SFProTextRegular',
                color: Color(0xFFF6F7FB),
                fontSize: 17.0,
                letterSpacing: -0.41,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
