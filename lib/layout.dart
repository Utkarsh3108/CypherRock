import 'package:cypherock_task/constants/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/main_screen.dart';
import 'widgets/side_menu.dart';
import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: kSidePanelAndCoinBoxColor,
              child: const SideMenu(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: kMainBackgroundColor,
              child: const SingleChildScrollView(child: MainScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
