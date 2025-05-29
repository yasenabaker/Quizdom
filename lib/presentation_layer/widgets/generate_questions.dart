import 'package:flutter/material.dart';
import 'package:quiz_app/data_layer/models/topics_model.dart';
import 'package:quiz_app/domain_layer/entities/questions_data.dart';
import 'package:quiz_app/presentation_layer/screens/final_results_screen.dart';
import 'package:quiz_app/presentation_layer/widgets/custom_material_button.dart';

class DrawQuestions extends StatefulWidget {
  const DrawQuestions({super.key});

  @override
  State<DrawQuestions> createState() => _DrawQuestionsState();
}

class _DrawQuestionsState extends State<DrawQuestions> {
  String? groupValue;
  Color defaultAnswerColor = Colors.white70;
  Color wrongAnswerColor = const Color.fromARGB(255, 243, 101, 101);
  Color rightAnswerColor = const Color(0xFFDFF5DD);

  void onAnswerSelected(String? value) {
    setState(() {
      groupValue = value;
      Questionsdata.isAnswerSelected = true;
      Questionsdata.isAnswerCorrect =
          value ==
                  topics[Questionsdata.topicIndex]
                      .questions[Questionsdata.questionIndex]
                      .correctAnswer
              ? true
              : false;
      if (Questionsdata.isAnswerCorrect) {
        Questionsdata.correctAnswers++;
        Questionsdata.totalScore += 10;
      } else {
        Questionsdata.wrongAnswers++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Questionsdata.questionsLength =
        topics[Questionsdata.topicIndex].questions.length;
    Questionsdata.totalSteps = Questionsdata.questionsLength;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  Questionsdata.topic,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 17,
                    letterSpacing: 3,
                    color: Colors.black87,
                  ),
                ),

                Icon(Icons.assignment, color: Colors.green, size: 20),
              ],
            ),
            SizedBox(height: 5),
            Divider(),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topics[Questionsdata.topicIndex]
                    .questions[Questionsdata.questionIndex]
                    .title,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 25,
                  letterSpacing: 1.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                textAlign: TextAlign.start,
                "Answer and get points",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.black54),
              ),

              SizedBox(height: 30),
              Text(
                textAlign: TextAlign.start,
                "Question ${Questionsdata.currentStep} of ${Questionsdata.questionsLength}",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.black54),
              ),
              SizedBox(height: 5),
              LinearProgressIndicator(
                value: Questionsdata.currentStep / Questionsdata.totalSteps,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.green,
                ), // e.g., 1/6 = 0.166
                color: const Color.fromARGB(255, 216, 216, 216),
                backgroundColor: const Color.fromARGB(255, 217, 217, 217),
                minHeight: 2.5,
              ),
              SizedBox(height: 20),

              Column(
                children:
                    topics[Questionsdata.topicIndex]
                        .questions[Questionsdata.questionIndex]
                        .answers
                        .map(
                          (answer) => Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 9),
                            child: Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color:
                                      groupValue == answer.title &&
                                              Questionsdata.isAnswerCorrect
                                          ? Colors.green
                                          : answer.title ==
                                                  topics[Questionsdata
                                                          .topicIndex]
                                                      .questions[Questionsdata
                                                          .questionIndex]
                                                      .correctAnswer &&
                                              Questionsdata.isAnswerSelected
                                          ? Colors.green
                                          : Colors.black26,
                                  width: 1,
                                ),
                              ),
                              color:
                                  Questionsdata.isAnswerSelected &&
                                          groupValue == answer.title &&
                                          Questionsdata.isAnswerCorrect
                                      ? rightAnswerColor
                                      : Questionsdata.isAnswerSelected &&
                                          groupValue == answer.title &&
                                          Questionsdata.isAnswerCorrect == false
                                      ? wrongAnswerColor
                                      : answer.title ==
                                              topics[Questionsdata.topicIndex]
                                                  .questions[Questionsdata
                                                      .questionIndex]
                                                  .correctAnswer &&
                                          Questionsdata.isAnswerSelected
                                      ? rightAnswerColor
                                      : defaultAnswerColor,

                              child: RadioListTile(
                                activeColor: Colors.black,
                                value: answer.title,
                                groupValue: groupValue,
                                onChanged:
                                    Questionsdata.isAnswerSelected
                                        ? null
                                        : (value) {
                                          onAnswerSelected(value.toString());
                                        },
                                title: Text(
                                  answer.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),

              SizedBox(height: 70),
              Questionsdata.isAnswerSelected
                  ? CustomMaterialButton(
                    title:
                        Questionsdata.questionIndex + 1 ==
                                Questionsdata.questionsLength
                            ? "Submit"
                            : "Next",
                    onPressed: () {
                      setState(() {
                        if (Questionsdata.questionIndex + 1 !=
                            Questionsdata.questionsLength) {
                          Questionsdata.questionIndex++;
                          Questionsdata.currentStep++;
                          Questionsdata.isAnswerSelected = false;
                          topics[Questionsdata.topicIndex]
                              .questions[Questionsdata.questionIndex]
                              .answers
                              .shuffle();
                          return;
                        }
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => FinalResults(),
                          ),
                        );
                      });
                    },
                  )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
