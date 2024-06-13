import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//_ classe privata, anche se lo importo non verrà utilizzato
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random(); //prevengo la creazione di nuovi oggetti che occuperebbero memoria
  var currentDiceRoll = 2;

  void rollDice() {
    setState((){
      currentDiceRoll = randomizer.nextInt(6) + 1; //lol
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll dice!'),
        )
      ],
    );
  }
}
