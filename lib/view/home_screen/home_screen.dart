import 'package:dice_app/controller/dice_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? random;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
              onTap: () {
                context.read<DiceController>().onpressed();
              },
              child: Consumer(
                  builder: (context, value, child) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    context.watch<DiceController>().random ==
                                            null
                                        ? "assets/images/button.png"
                                        : DiceController.dices[context
                                            .watch<DiceController>()
                                            .random!]))),
                      )))),
    );
  }
}
