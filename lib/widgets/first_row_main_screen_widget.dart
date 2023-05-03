import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  const FirstRow({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'icons/syncronised_icon.png',
          height: screensize.height * 20 / 700,
          width: screensize.width * 20 / 1000,
        ),
        SizedBox(
          width: screensize.width * 5 / 1000,
        ),
        Text(
          'Syncronized',
          style: TextStyle(
            fontFamily: 'Avenir65',
            color: const Color(0xffF5CEA3),
            fontSize: screensize.height * 14 / 700,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: screensize.width * 35 / 1000,
        ),
        Image.asset(
          'icons/Eclipse.png',
          height: screensize.height * 28 / 700,
          width: screensize.width * 31 / 1000,
        ),
        SizedBox(
          width: screensize.width * 5 / 1000,
        ),
        Image.asset(
          'icons/lock.png',
          height: screensize.height * 28 / 700,
          width: screensize.width * 31 / 1000,
        ),
      ],
    );
  }
}
