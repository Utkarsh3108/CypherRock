import 'package:flutter/material.dart';

class AlertDialogCustom extends StatelessWidget {
  const AlertDialogCustom({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: const Color(0xFF131619),
      content: Container(
        height: screensize.height * 561 / 700,
        width: screensize.width * 686 / 1000,
        padding: EdgeInsets.symmetric(
          horizontal: screensize.width * 40 / 1000,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screensize.height * 35 / 700,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SizedBox(width: screensize.width * 275 / 1000),
                Text(
                  'Receive',
                  style: TextStyle(
                      fontFamily: 'Avenir65',
                      color: const Color(0xffFFFFFF),
                      fontSize: screensize.height * 22 / 700,
                      fontWeight: FontWeight.w100,
                      height: 1.2),
                ),
                SizedBox(
                  width: screensize.width * 245 / 1000,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Color(0xff9D9D9D),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screensize.height * 30 / 700,
            ),
            Expanded(
              child: SizedBox(
                width: screensize.width * 375 / 1000,
                child: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
