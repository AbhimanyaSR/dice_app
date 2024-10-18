import 'dart:math';
import 'package:flutter/foundation.dart';

class DiceProvider with ChangeNotifier {
  int _diceValue = 1;
  final Random _random = Random();

  int get diceValue => _diceValue;

  void rollDice() {
    _diceValue =
        _random.nextInt(6) + 1; // Generate random number between 1 and 6
    notifyListeners();
  }
}
