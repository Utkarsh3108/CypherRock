import 'package:cypherock_task/constants/constants.dart';
import 'package:flutter/material.dart';

import 'pop_up.dart';

class CoinRow extends StatelessWidget {
  final String imagePath;
  final String coinName;
  final String amount;
  final String price;
  const CoinRow(
      {super.key,
      required this.imagePath,
      required this.coinName,
      required this.amount,
      required this.price});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Container(
      height: screensize.height * 70 / 700,
      width: screensize.width * 725 / 1000,
      color: kSidePanelAndCoinBoxColor,
      // decoration: BoxDecoration(
      //   border: Border.all(color: kAppBarBorderColor),
      // ),
      padding: EdgeInsets.symmetric(horizontal: screensize.width * 20 / 1000),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                height: screensize.height * 30 / 700,
                width: screensize.width * 30 / 1000,
                filterQuality: FilterQuality.high,
              ),
              SizedBox(
                width: screensize.width * 80 / 1000,
                child: Text(
                  coinName,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    color: const Color(0xFFADABAA),
                    fontSize: screensize.height * 14 / 700,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          Text(
            amount,
            style: TextStyle(
              fontFamily: 'Avenir',
              color: const Color(0xFFADABAA),
              fontSize: screensize.height * 14 / 700,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontFamily: 'Avenir',
              color: const Color(0xFFADABAA),
              fontSize: screensize.height * 14 / 700,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          SizedBox(
            width: screensize.width * 165 / 1000,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'icons/arrow_receive.png',
                  height: screensize.height * 12 / 700,
                  width: screensize.width * 14 / 1000,
                  filterQuality: FilterQuality.high,
                ),
                // SizedBox(
                //   width: screensize.width * 2 / 1000,
                // ),

                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const AlertDialogCustom());
                  },
                  child: Text(
                    'RECEIVE',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: const Color(0xff8484F1),
                      fontSize: screensize.height * 16 / 700,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
                // SizedBox(
                //   width: screensize.width * 5 / 1000,
                // ),
                Image.asset(
                  'icons/bar.png',
                  height: screensize.height * 15 / 700,
                  width: screensize.width * 1 / 1000,
                  filterQuality: FilterQuality.high,
                ),
                // SizedBox(
                //   width: screensize.width * 5 / 1000,
                // ),
                Image.asset(
                  'icons/arrow_out.png',
                  height: screensize.height * 12 / 700,
                  width: screensize.width * 14 / 1000,
                  filterQuality: FilterQuality.high,
                ),
                // SizedBox(
                //   width: screensize.width * 2 / 1000,
                // ),
                Text(
                  'SEND',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    color: const Color(0xffCAA276),
                    fontSize: screensize.height * 16 / 700,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
