import 'package:dice_app/controller/dice_provider.dart';
import 'package:dice_app/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DiceProvider(),
      child: const MaterialApp(home: HomeScreen()),
    );
  }
}
