import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
// import 'package:quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/status_box.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartAgain});

  final List<String> chosenAnswers;
  final void Function() restartAgain;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final SummaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = SummaryData.where(
        (data) => (data['user_answer'] == data['correct_answer'])).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answerd $numCorrectQuestions out of $numTotalQuestions questions correctly !',style: GoogleFonts.lato(
                  color: const Color.fromARGB(255,230, 200, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,),
                
            const SizedBox(
              height: 30,
            ),
            StatusBox(SummaryData),
            const SizedBox(
              height: 40,
            ),
            TextButton.icon(
              onPressed: restartAgain,
              label: Text(
                'Restart Quiz!',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              icon: const Icon(Icons.replay_sharp),
            )
          ],
        ),
      ),
    );
  }
}
