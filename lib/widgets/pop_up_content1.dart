import 'package:flutter/material.dart';

class PopUpContent1 extends StatefulWidget {
  const PopUpContent1({super.key});

  @override
  State<PopUpContent1> createState() => _PopUpContent1State();
}

class _PopUpContent1State extends State<PopUpContent1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('icons/Receive1.png'),
      ],
    );
  }
}
