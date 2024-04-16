import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset('assets/images/quiz-logo.png', height: 300),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_forward_ios_rounded, size: 17),
          )
        ],
      ),
    );
  }
}
