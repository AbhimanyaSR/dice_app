import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? random;
  List<String> dices = [
    "assets/images/d1.jpg",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          setState(() {
            random = Random().nextInt(dices.length);
          });
        },
        child: Image.asset(
            random == null ? "assets/images/button.png" : dices[random!]),
      )),
    );
  }
}
