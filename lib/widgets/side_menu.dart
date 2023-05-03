import 'package:flutter/material.dart';

import 'expandable_side_menu_item.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: screensize.height * 52 / 700),
      child: Column(
        children: [
          SideMenuItem(
            imagePath: 'assets/icons/portfolio_icon.png',
            text: 'Portfolio',
            onTap: () {},
          ),
          const Expandable_side_menu_item(),
          SideMenuItem(
            imagePath: 'icons/last_transactions.png',
            text: 'Last Transactions',
            onTap: () {},
          ),
          SideMenuItem(
            imagePath: 'icons/tutorials_icon.png',
            text: 'Tutorials',
            onTap: () {},
          ),
          SideMenuItem(
            imagePath: 'icons/settings_icon.png',
            text: 'Settings',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
