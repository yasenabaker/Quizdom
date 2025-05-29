class Questionsdata {
  static int topicIndex = 0;
  static int questionIndex = 0;
  static String topic = "";
  static bool isAnswerSelected = false;
  static bool isAnswerCorrect = false;
  static int wrongAnswers = 0;
  static int correctAnswers = 0;
  static int questionsLength = 0;
  static int totalSteps = 0;
  static int currentStep = 1;
  static int totalScore = 0;

  static void resetQuestionsData() {
    questionIndex = 0;
    isAnswerSelected = false;
    isAnswerCorrect = false;
    wrongAnswers = 0;
    correctAnswers = 0;
    questionsLength = 0;
    totalSteps = 0;
    currentStep = 1;
    totalScore = 0;
  }
}
