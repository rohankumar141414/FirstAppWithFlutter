import 'package:flutter/material.dart';
import 'dart:math';

final rand = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1;

  void rollDice() {
    setState(() {  
     diceRoll = rand.nextInt(6)+1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$diceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.yellow, backgroundColor: Colors.black),
          child: const Text('Tap This'),
        )
      ],
    );
  }
}
