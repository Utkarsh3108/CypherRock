import 'package:cypherock_task/constants/constants.dart';
import 'package:cypherock_task/widgets/first_row_main_screen_widget.dart';
import 'package:cypherock_task/widgets/third_row_main_screen.dart';
import 'package:flutter/material.dart';

import 'coin_row.dart';
import 'second_row_main_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: screensize.height * 21.5 / 700),
        Container(
          padding:
              EdgeInsets.symmetric(horizontal: screensize.width * 40 / 1000),
          child: const FirstRow(),
        ),
        SizedBox(height: screensize.height * 45 / 700),
        Container(
          padding:
              EdgeInsets.symmetric(horizontal: screensize.width * 40 / 1000),
          child: const SecondRow(),
        ),
        SizedBox(height: screensize.height * 35 / 700),
        Container(
          height: screensize.height * 47 / 700,
          width: screensize.width * 725 / 1000,
          decoration: BoxDecoration(
            border: Border.all(color: kAppBarBorderColor),
          ),
          padding:
              EdgeInsets.symmetric(horizontal: screensize.width * 20 / 1000),
          child: const ThirdRow(),
        ),
        SizedBox(
          height: screensize.height * 20 / 700,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screensize.height * 10 / 700,
          ),
          child: const CoinRow(
            imagePath: "icons/bitcoin.png",
            coinName: "BITCOIN",
            amount: "BTC 0.0025600",
            price: "USD 0.2568",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screensize.height * 10 / 700,
          ),
          child: const CoinRow(
            imagePath: "icons/ethereum.png",
            coinName: "ETHEREUM",
            amount: "ETH 0.0025600",
            price: "USD 0.2568",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screensize.height * 10 / 700,
          ),
          child: const CoinRow(
            imagePath: "icons/binance.png",
            coinName: "BINANCE COIN",
            amount: "BNB 0.0025600",
            price: "USD 0.2568",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screensize.height * 10 / 700,
          ),
          child: const CoinRow(
            imagePath: "icons/bitcoin.png",
            coinName: "BITCOIN",
            amount: "BTC 0.0025600",
            price: "USD 0.2568",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screensize.height * 10 / 700,
          ),
          child: const CoinRow(
            imagePath: "icons/ethereum.png",
            coinName: "ETHEREUM",
            amount: "ETH 0.0025600",
            price: "USD 0.2568",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: screensize.height * 10 / 700,
          ),
          child: const CoinRow(
            imagePath: "icons/binance.png",
            coinName: "BINANCE",
            amount: "BNB 0.0025600",
            price: "USD 0.2568",
          ),
        ),
      ],
    );
  }
}
