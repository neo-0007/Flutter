import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
 const GradientContainer(this.gradcolor, {super.key});

  

  final List<Color> gradcolor;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: gradcolor,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
