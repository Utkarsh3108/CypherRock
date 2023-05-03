import 'package:flutter/material.dart';

import 'drop_down2.dart';

class ThirdRow extends StatelessWidget {
  const ThirdRow({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Total Coin - 6',
          style: TextStyle(
            fontFamily: 'Avenir65',
            color: const Color(0xffADABAA),
            fontSize: screensize.height * 12 / 700,
            fontWeight: FontWeight.w400,
            height: 1.2,
          ),
        ),
        Container(
          child: Row(
            children: [
              Image.asset(
                'icons/up_down_arrow.png',
                height: screensize.height * 12 / 700,
                width: screensize.width * 10 / 1000,
              ),
              // SizedBox(
              //   width: screensize.width * 5 / 1000,
              // ),
              const DropdownButtonExample2(),
            ],
          ),
        ),
      ],
    );
  }
}
