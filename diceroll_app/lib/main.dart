import 'package:flutter/material.dart';

import 'package:diceroll_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 39, 1, 104),
          const Color.fromARGB(255, 65, 20, 143)
        ),
      ),
    ),
  );
}
