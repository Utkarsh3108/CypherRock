import 'package:flutter/material.dart';

import '../constants/constants.dart';

AppBar topNavigationBar(BuildContext context) {
  var screensize = MediaQuery.of(context).size;
  return AppBar(
    backgroundColor: kMainBackgroundColor,
    shape: const Border(
      bottom: BorderSide(
        color: kAppBarBorderColor,
        width: 1,
      ),
    ),
    elevation: 0,
    centerTitle: false,
    title: Container(
      height: screensize.height * 14 / 700,
      width: screensize.width * 141 / 1000,
      padding: EdgeInsets.only(left: screensize.width * 30 / 1000),
      child: Image.asset(
        "assets/Icons/Cypherock_logo.png",
        fit: BoxFit.contain,
        // height: screensize.height * 12 / 700,
        // width: screensize.width * 141 / 1000,
      ),
    ),
    actions: [
      const IconButton(
        alignment: Alignment.topCenter,
        onPressed: null,
        icon: Icon(
          Icons.minimize_sharp,
          color: Colors.white,
        ),
      ),
      const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.square_outlined,
          color: Colors.white,
          size: 20,
        ),
      ),
      const IconButton(
        onPressed: null,
        icon: Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: screensize.width * 30 / 1000,
      ),
    ],
  );
}
