import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Expandable_side_menu_item extends StatelessWidget {
  const Expandable_side_menu_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return ExpansionTile(
      textColor: kSideBarWalletActive1Color,
      collapsedTextColor: kSideBarPrimaryTextColor,
      iconColor: kSideBarWalletActive2Color,
      collapsedIconColor: kSideBarPrimaryTextColor,
      leading: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: screensize.width * 8.0 / 1000),
        child: Image.asset(
          'icons/wallets_icon.png',
          height: screensize.height * 14 / 700,
          width: screensize.width * 12.5 / 1000,
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Wallets',
          style: TextStyle(
            fontFamily: 'Avenir65',
            fontSize: screensize.height * 14 / 700,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: screensize.width * 45.0 / 1000),
          child: ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            title: Text(
              "Wallet 1",
              style: TextStyle(
                fontFamily: 'Avenir65',
                color: kSideBarWalletActive2Color,
                fontSize: screensize.height * 12 / 700,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screensize.width * 28.0 / 1000),
          child: ListTile(
            visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
            leading: Image.asset(
              'icons/addwallet.png',
              height: screensize.height * 20 / 700,
              width: screensize.width * 87 / 1000,
            ),
          ),
        ),
      ],
    );
  }
}
