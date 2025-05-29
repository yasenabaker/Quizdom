import 'package:quiz_app/data_layer/models/answers_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers;
  final String correctAnswer;

  const QuestionModel({
    required this.title,
    required this.answers,
    required this.correctAnswer,
  });
}
