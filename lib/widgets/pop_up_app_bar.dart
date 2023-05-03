import 'package:flutter/material.dart';

class PopUpAppBar extends StatelessWidget {
  const PopUpAppBar({
    super.key,
    required this.screensize,
  });

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: screensize.width * 260 / 1000),
        Text(
          'Receive',
          style: TextStyle(
              fontFamily: 'Avenir65',
              color: const Color(0xffFFFFFF),
              fontSize: screensize.height * 22 / 700,
              fontWeight: FontWeight.w100,
              height: 1.2),
        ),
        SizedBox(
          width: screensize.width * 230 / 1000,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
            color: Color(0xff9D9D9D),
          ),
        ),
      ],
    );
  }
}
