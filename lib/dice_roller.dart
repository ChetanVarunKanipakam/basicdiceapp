import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  State<DiceRoller> createState(){
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller>{
   var activatedicenumber='assets/images/dice2.png';

  void rolldice(){
    var diceroll=Random().nextInt(6)+1;
    setState(() {
      activatedicenumber='assets/images/dice$diceroll.png';
    });
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activatedicenumber ,width:200),
            SizedBox(height:30),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 28,
                )
              ),
              child: Text("Roll Dice"))]
        );
  }
}