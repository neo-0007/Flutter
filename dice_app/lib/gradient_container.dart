import 'package:flutter/material.dart';
import 'package:dice_app/styled_text.dart';

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
      child: Center(
        child: Image.asset('assets/images/dice-1.png',width: 200,),
      ),
    );
  }
}
