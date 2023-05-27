import 'package:flutter/material.dart';

class ButtonStyle2 {
  buttonColor() {
    return BoxDecoration(
      gradient: const LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: [0, 0.4, 0.85, 0.95],
        colors: [
          Colors.amberAccent,
          Colors.pinkAccent,
          Colors.purple,
          Colors.deepPurple,
        ],
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }

  buttonGradient() {
    return const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [0, 0.4, 0.85, 0.95],
      colors: [
        Colors.amberAccent,
        Colors.pinkAccent,
        Colors.purple,
        Colors.deepPurple,
      ],
    );
  }
}
