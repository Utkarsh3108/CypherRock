import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SideMenuItem extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onTap;
  const SideMenuItem({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return ListTile(
      leading: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: screensize.width * 8.0 / 1000),
        child: Image.asset(
          imagePath,
          height: screensize.height * 14 / 700,
          width: screensize.width * 12.5 / 1000,
          color: kSideBarPrimaryTextColor,
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Avenir65',
            color: kSideBarPrimaryTextColor,
            fontSize: screensize.height * 14 / 700,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
