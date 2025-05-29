import 'package:flutter/material.dart';
import 'package:quiz_app/domain_layer/entities/questions_data.dart';
import 'package:quiz_app/presentation_layer/widgets/custom_material_button.dart';
import 'package:quiz_app/presentation_layer/widgets/generate_questions.dart';

class FinalResults extends StatefulWidget {
  const FinalResults({super.key});

  @override
  State<FinalResults> createState() => _FinalResultsState();
}

class _FinalResultsState extends State<FinalResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "🎉 Congratulations! 🎉",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You get ${Questionsdata.correctAnswers} out of ${Questionsdata.questionsLength} questions ",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "❌ Wrong Answers: ${Questionsdata.wrongAnswers}",
              style: TextStyle(fontSize: 16, letterSpacing: 1),
            ),
            SizedBox(height: 5),
            Text(
              "✅ Right Answers: ${Questionsdata.correctAnswers}",
              style: TextStyle(fontSize: 16, letterSpacing: 1),
            ),
            SizedBox(height: 5),
            Text(
              "🏆 Total Score: ${Questionsdata.totalScore}",
              style: TextStyle(fontSize: 16, letterSpacing: 1),
            ),

            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomMaterialButton(
                title: "Restart Quiz",
                onPressed: () {
                  setState(() {
                    Questionsdata.resetQuestionsData();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => DrawQuestions()),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
