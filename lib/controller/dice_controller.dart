import 'dart:math';
import 'package:flutter/foundation.dart';

class DiceController with ChangeNotifier {
  static List dices = [
    "assets/images/d1.jpg",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
  ];
  int? random;
  onpressed() {
    random = Random().nextInt(6) + 1;
    notifyListeners();
  }
}
