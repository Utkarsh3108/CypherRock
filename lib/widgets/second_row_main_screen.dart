import 'package:flutter/material.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Wallet 1',
          style: TextStyle(
            fontFamily: 'Avenir',
            color: const Color(0xffC78D4E),
            fontSize: screensize.height * 20 / 700,
            fontWeight: FontWeight.w700,
            height: 1.2,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size(
              screensize.width * 120 / 1000,
              screensize.height * 41 / 700,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            backgroundColor: const Color(0xFF191E26),
          ),
          onPressed: null,
          child: const Text(
            '+ Add Coin',
            style: TextStyle(
              color: Color(0xFFBEB4A8),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
        ),
      ],
    );
  }
}
