import 'package:cypherock_task/constants/constants.dart';
import 'package:cypherock_task/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        fontFamily: 'Avenir',
        scaffoldBackgroundColor: kMainBackgroundColor,
        primaryColor: kMainBackgroundColor,
      ),
      home: const SiteLayout(),
    );
  }
}
