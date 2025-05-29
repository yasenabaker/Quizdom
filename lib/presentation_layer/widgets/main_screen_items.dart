import 'package:flutter/material.dart';
import 'package:quiz_app/domain_layer/entities/questions_data.dart';
import 'package:quiz_app/presentation_layer/widgets/custom_decorated_box.dart';
import 'package:quiz_app/presentation_layer/widgets/custom_material_button.dart';
import 'package:quiz_app/presentation_layer/widgets/generate_questions.dart';

class MainScreenItems extends StatefulWidget {
  const MainScreenItems({super.key});

  @override
  State<MainScreenItems> createState() => _MainScreenItemsState();
}

class _MainScreenItemsState extends State<MainScreenItems> {
  void onStartTestPressed() {
    setState(() {
      Questionsdata.topicIndex = 0;
      Questionsdata.topic = "Programming";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 10),
      child: Column(
        children: [
          Text(
            "Choose a topic to start testing your knowledge ?",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
          
          SizedBox(height: 30),
          Divider(),
          SizedBox(height: 30),

          Wrap(
            spacing: 20,
            runSpacing: 30,
            alignment: WrapAlignment.start,
            children: [
              CustomDecoratedBox(
                title: "Programming",
                onPressed: () {
                  setState(() {
                    Questionsdata.topicIndex = 0;
                    Questionsdata.topic = "Programming";
                  });
                },
              ),
              CustomDecoratedBox(
                title: "Networking",
                onPressed: () {
                  setState(() {
                    Questionsdata.topicIndex = 1;
                    Questionsdata.topic = "Networking";
                  });
                },
              ),
              CustomDecoratedBox(
                title: "Cyber Security",
                onPressed: () {
                  setState(() {
                    Questionsdata.topicIndex = 2;
                    Questionsdata.topic = "Cyber Security";
                  });
                },
              ),
              CustomDecoratedBox(
                title: "Machine Learning",
                onPressed: () {
                  setState(() {
                    Questionsdata.topicIndex = 3;
                    Questionsdata.topic = "Machine Learning";
                  });
                },
              ),
              CustomDecoratedBox(
                title: "Mix",
                onPressed: () {
                  setState(() {
                    Questionsdata.topicIndex = 0;
                    Questionsdata.topic = "Programming";
                  });
                },
              ),
            ],
          ),

          SizedBox(height: 250),
          Questionsdata.topic != ""
              ? CustomMaterialButton(
                title: "Start The Test",
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => DrawQuestions()),
                    );
                  });
                },
              )
              : SizedBox(),
        ],
      ),
    );
  }
}
