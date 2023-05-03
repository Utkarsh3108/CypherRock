import 'package:cypherock_task/constants/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Amount  High - Low',
  'Amount  Low - High',
  'Arrange A - Z',
  'Arrange Z - A'
];

class DropdownButtonExample2 extends StatefulWidget {
  const DropdownButtonExample2({super.key});

  @override
  State<DropdownButtonExample2> createState() => _DropdownButtonExample2State();
}

class _DropdownButtonExample2State extends State<DropdownButtonExample2> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return DropdownButton2(
      dropdownDecoration: BoxDecoration(
        color: const Color(0xff272A2f),
        border: Border.all(
          width: 1,
          color: kAppBarBorderColor,
        ),
      ),
      offset: const Offset(-20, 0),
      value: dropdownValue,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Color(0xffC78D4E),
      ),
      style: const TextStyle(
          color: Color(0xffBEB4A8),
          fontFamily: 'Avenir65',
          fontSize: 10,
          height: 1.2,
          fontWeight: FontWeight.w600),
      underline: Container(height: 0),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
