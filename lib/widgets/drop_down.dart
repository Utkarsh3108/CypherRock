import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Amount  Low - High',
  'Amount  High - Low',
  'Arrange A-Z',
  'Arrange Z-A'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Color(0xffC78D4E),
      ),
      elevation: 0,
      dropdownColor: const Color(0xff272A2f),
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
