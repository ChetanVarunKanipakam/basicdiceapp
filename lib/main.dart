import 'package:flutter/material.dart';

import 'package:basicdiceapp/dice_roller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(context) {
    return MaterialApp(home: Scaffold(body: GradientContainer()));
  }
}

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

 

  @override
  build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 21, 248, 13),
            const Color.fromARGB(66, 167, 225, 108),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
        child: DiceRoller()
      )
    );
  }
}
