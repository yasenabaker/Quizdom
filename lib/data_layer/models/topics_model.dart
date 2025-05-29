import 'package:quiz_app/data_layer/models/answers_model.dart';
import 'package:quiz_app/data_layer/models/questions_model.dart';

class TopicModel {
  final String title;
  final List<QuestionModel> questions;

  const TopicModel({required this.title, required this.questions});
}

List<TopicModel> topics = [
  TopicModel(
    title: "Programming",
    questions: [
      QuestionModel(
        title: "What does 'OOP' stand for in programming?",
        answers: [
          AnswerModel(title: "Object-Oriented Programming"),
          AnswerModel(title: "Open Output Process"),
          AnswerModel(title: "Online Operating Procedure"),
          AnswerModel(title: "Object Operating Process"),
          AnswerModel(title: "Ordered Object Protocol"),
        ],
        correctAnswer: "Object-Oriented Programming",
      ),
      QuestionModel(
        title: "Which language is primarily used for Android app development?",
        answers: [
          AnswerModel(title: "Python"),
          AnswerModel(title: "Java"),
          AnswerModel(title: "Swift"),
          AnswerModel(title: "C#"),
          AnswerModel(title: "Kotlin"),
        ],
        correctAnswer: "Kotlin",
      ),
      QuestionModel(
        title: "Which of these is not a programming language?",
        answers: [
          AnswerModel(title: "Python"),
          AnswerModel(title: "HTML"),
          AnswerModel(title: "JavaScript"),
          AnswerModel(title: "Ruby"),
          AnswerModel(title: "C++"),
        ],
        correctAnswer: "HTML",
      ),
      QuestionModel(
        title: "What symbol is used for single-line comments in Dart?",
        answers: [
          AnswerModel(title: "//"),
          AnswerModel(title: "#"),
          AnswerModel(title: "/*"),
          AnswerModel(title: "<!--"),
          AnswerModel(title: "\\\\"),
        ],
        correctAnswer: "//",
      ),
      QuestionModel(
        title: "What does IDE stand for?",
        answers: [
          AnswerModel(title: "Integrated Development Environment"),
          AnswerModel(title: "Internal Debugging Engine"),
          AnswerModel(title: "Internet Development Extension"),
          AnswerModel(title: "Integrated Design Editor"),
          AnswerModel(title: "Interactive Debug Environment"),
        ],
        correctAnswer: "Integrated Development Environment",
      ),
      QuestionModel(
        title: "Which keyword is used to create a class in C#?",
        answers: [
          AnswerModel(title: "define"),
          AnswerModel(title: "object"),
          AnswerModel(title: "class"),
          AnswerModel(title: "structure"),
          AnswerModel(title: "model"),
        ],
        correctAnswer: "class",
      ),
      QuestionModel(
        title: "Which of these is used to repeat a block of code?",
        answers: [
          AnswerModel(title: "loop"),
          AnswerModel(title: "if"),
          AnswerModel(title: "switch"),
          AnswerModel(title: "return"),
          AnswerModel(title: "case"),
        ],
        correctAnswer: "loop",
      ),
      QuestionModel(
        title: "Which data structure uses LIFO order?",
        answers: [
          AnswerModel(title: "Queue"),
          AnswerModel(title: "List"),
          AnswerModel(title: "Stack"),
          AnswerModel(title: "Set"),
          AnswerModel(title: "Array"),
        ],
        correctAnswer: "Stack",
      ),
      QuestionModel(
        title: "What is the file extension for a Dart file?",
        answers: [
          AnswerModel(title: ".dart"),
          AnswerModel(title: ".java"),
          AnswerModel(title: ".py"),
          AnswerModel(title: ".js"),
          AnswerModel(title: ".c"),
        ],
        correctAnswer: ".dart",
      ),
      QuestionModel(
        title: "Which of these is a version control system?",
        answers: [
          AnswerModel(title: "Docker"),
          AnswerModel(title: "Git"),
          AnswerModel(title: "Node"),
          AnswerModel(title: "NPM"),
          AnswerModel(title: "Flutter"),
        ],
        correctAnswer: "Git",
      ),
    ],
  ),

  TopicModel(
    title: "Networking",
    questions: [
      QuestionModel(
        title: "What does IP stand for?",
        answers: [
          AnswerModel(title: "Internet Protocol"),
          AnswerModel(title: "Internal Program"),
          AnswerModel(title: "Input Port"),
          AnswerModel(title: "International Packet"),
          AnswerModel(title: "Internet Pathway"),
        ],
        correctAnswer: "Internet Protocol",
      ),
      QuestionModel(
        title: "Which device forwards data packets between networks?",
        answers: [
          AnswerModel(title: "Switch"),
          AnswerModel(title: "Modem"),
          AnswerModel(title: "Router"),
          AnswerModel(title: "Repeater"),
          AnswerModel(title: "Firewall"),
        ],
        correctAnswer: "Router",
      ),
      QuestionModel(
        title: "What is the standard port number for HTTP?",
        answers: [
          AnswerModel(title: "80"),
          AnswerModel(title: "21"),
          AnswerModel(title: "443"),
          AnswerModel(title: "25"),
          AnswerModel(title: "53"),
        ],
        correctAnswer: "80",
      ),
      QuestionModel(
        title:
            "Which protocol is used for secure communication over the Internet?",
        answers: [
          AnswerModel(title: "FTP"),
          AnswerModel(title: "HTTP"),
          AnswerModel(title: "HTTPS"),
          AnswerModel(title: "IP"),
          AnswerModel(title: "SMTP"),
        ],
        correctAnswer: "HTTPS",
      ),
      QuestionModel(
        title: "Which layer in the OSI model is responsible for routing?",
        answers: [
          AnswerModel(title: "Network"),
          AnswerModel(title: "Transport"),
          AnswerModel(title: "Data Link"),
          AnswerModel(title: "Session"),
          AnswerModel(title: "Presentation"),
        ],
        correctAnswer: "Network",
      ),
      QuestionModel(
        title: "What does DNS stand for?",
        answers: [
          AnswerModel(title: "Domain Name System"),
          AnswerModel(title: "Dynamic Network Service"),
          AnswerModel(title: "Data Node System"),
          AnswerModel(title: "Digital Network Source"),
          AnswerModel(title: "Domain Net Security"),
        ],
        correctAnswer: "Domain Name System",
      ),
      QuestionModel(
        title: "Which protocol is used to transfer emails?",
        answers: [
          AnswerModel(title: "SMTP"),
          AnswerModel(title: "FTP"),
          AnswerModel(title: "HTTP"),
          AnswerModel(title: "IP"),
          AnswerModel(title: "IMAP"),
        ],
        correctAnswer: "SMTP",
      ),
      QuestionModel(
        title: "What is the maximum length of an IPv4 address?",
        answers: [
          AnswerModel(title: "15 characters"),
          AnswerModel(title: "10 characters"),
          AnswerModel(title: "20 characters"),
          AnswerModel(title: "32 characters"),
          AnswerModel(title: "8 characters"),
        ],
        correctAnswer: "15 characters",
      ),
      QuestionModel(
        title: "Which of the following is a private IP address?",
        answers: [
          AnswerModel(title: "192.168.0.1"),
          AnswerModel(title: "8.8.8.8"),
          AnswerModel(title: "172.217.0.46"),
          AnswerModel(title: "144.44.44.44"),
          AnswerModel(title: "13.107.246.45"),
        ],
        correctAnswer: "192.168.0.1",
      ),
      QuestionModel(
        title: "What does LAN stand for?",
        answers: [
          AnswerModel(title: "Local Area Network"),
          AnswerModel(title: "Large Access Node"),
          AnswerModel(title: "Local Access Net"),
          AnswerModel(title: "Logical Area Network"),
          AnswerModel(title: "Limited Access Network"),
        ],
        correctAnswer: "Local Area Network",
      ),
    ],
  ),

  TopicModel(
    title: "Cyber Security",
    questions: [
      QuestionModel(
        title: "What is the purpose of a firewall?",
        answers: [
          AnswerModel(title: "To block unauthorized access"),
          AnswerModel(title: "To speed up the internet"),
          AnswerModel(title: "To store data"),
          AnswerModel(title: "To send emails"),
          AnswerModel(title: "To manage bandwidth"),
        ],
        correctAnswer: "To block unauthorized access",
      ),
      QuestionModel(
        title: "What does 'phishing' refer to?",
        answers: [
          AnswerModel(title: "Tricking users into giving personal info"),
          AnswerModel(title: "Encrypting data for safety"),
          AnswerModel(title: "Physically stealing a device"),
          AnswerModel(title: "Using strong passwords"),
          AnswerModel(title: "Scanning networks"),
        ],
        correctAnswer: "Tricking users into giving personal info",
      ),
      QuestionModel(
        title: "Which of these is an example of strong password?",
        answers: [
          AnswerModel(title: "P@ssw0rd!123"),
          AnswerModel(title: "12345678"),
          AnswerModel(title: "password"),
          AnswerModel(title: "abcdefg"),
          AnswerModel(title: "qwerty"),
        ],
        correctAnswer: "P@ssw0rd!123",
      ),
      QuestionModel(
        title: "What does 2FA stand for?",
        answers: [
          AnswerModel(title: "Two-Factor Authentication"),
          AnswerModel(title: "Two Firewall Applications"),
          AnswerModel(title: "File Authorization"),
          AnswerModel(title: "Fast Access Authentication"),
          AnswerModel(title: "Folder Access"),
        ],
        correctAnswer: "Two-Factor Authentication",
      ),
      QuestionModel(
        title: "What type of malware demands payment?",
        answers: [
          AnswerModel(title: "Ransomware"),
          AnswerModel(title: "Trojan"),
          AnswerModel(title: "Spyware"),
          AnswerModel(title: "Adware"),
          AnswerModel(title: "Rootkit"),
        ],
        correctAnswer: "Ransomware",
      ),
      QuestionModel(
        title: "Which protocol is secure?",
        answers: [
          AnswerModel(title: "HTTPS"),
          AnswerModel(title: "FTP"),
          AnswerModel(title: "HTTP"),
          AnswerModel(title: "SMTP"),
          AnswerModel(title: "Telnet"),
        ],
        correctAnswer: "HTTPS",
      ),
      QuestionModel(
        title: "Which is not a form of cyber attack?",
        answers: [
          AnswerModel(title: "Debugging"),
          AnswerModel(title: "Phishing"),
          AnswerModel(title: "DDoS"),
          AnswerModel(title: "Malware"),
          AnswerModel(title: "Man-in-the-Middle"),
        ],
        correctAnswer: "Debugging",
      ),
      QuestionModel(
        title: "What does VPN stand for?",
        answers: [
          AnswerModel(title: "Virtual Private Network"),
          AnswerModel(title: "Verified Public Network"),
          AnswerModel(title: "Virtual Protected Node"),
          AnswerModel(title: "Very Personal Network"),
          AnswerModel(title: "Visual Packet Network"),
        ],
        correctAnswer: "Virtual Private Network",
      ),
      QuestionModel(
        title: "What is a brute force attack?",
        answers: [
          AnswerModel(title: "Guessing passwords using all combinations"),
          AnswerModel(title: "Sending a virus"),
          AnswerModel(title: "Logging network traffic"),
          AnswerModel(title: "Encrypting a device"),
          AnswerModel(title: "Unplugging a server"),
        ],
        correctAnswer: "Guessing passwords using all combinations",
      ),
      QuestionModel(
        title: "What is encryption used for?",
        answers: [
          AnswerModel(title: "Securing data"),
          AnswerModel(title: "Deleting viruses"),
          AnswerModel(title: "Speeding up apps"),
          AnswerModel(title: "Improving graphics"),
          AnswerModel(title: "Compressing files"),
        ],
        correctAnswer: "Securing data",
      ),
    ],
  ),

  TopicModel(
    title: "Machine Learning",
    questions: [
      QuestionModel(
        title: "What is Machine Learning?",
        answers: [
          AnswerModel(title: "A method to teach machines using data"),
          AnswerModel(title: "A programming language"),
          AnswerModel(title: "A type of hardware"),
          AnswerModel(title: "Manual coding of rules"),
          AnswerModel(title: "Software testing method"),
        ],
        correctAnswer: "A method to teach machines using data",
      ),
      QuestionModel(
        title: "Which of these is a type of ML?",
        answers: [
          AnswerModel(title: "Supervised Learning"),
          AnswerModel(title: "Quantum Learning"),
          AnswerModel(title: "Virtual Learning"),
          AnswerModel(title: "Manual Learning"),
          AnswerModel(title: "Analog Learning"),
        ],
        correctAnswer: "Supervised Learning",
      ),
      QuestionModel(
        title: "Which language is widely used in ML?",
        answers: [
          AnswerModel(title: "Python"),
          AnswerModel(title: "HTML"),
          AnswerModel(title: "CSS"),
          AnswerModel(title: "PHP"),
          AnswerModel(title: "Bash"),
        ],
        correctAnswer: "Python",
      ),
      QuestionModel(
        title: "What is a dataset?",
        answers: [
          AnswerModel(title: "A collection of data"),
          AnswerModel(title: "A software library"),
          AnswerModel(title: "An algorithm"),
          AnswerModel(title: "A machine"),
          AnswerModel(title: "A network model"),
        ],
        correctAnswer: "A collection of data",
      ),
      QuestionModel(
        title: "What does 'training a model' mean?",
        answers: [
          AnswerModel(title: "Feeding data to make predictions"),
          AnswerModel(title: "Upgrading software"),
          AnswerModel(title: "Installing a package"),
          AnswerModel(title: "Cleaning a device"),
          AnswerModel(title: "Testing a UI"),
        ],
        correctAnswer: "Feeding data to make predictions",
      ),
      QuestionModel(
        title: "Which library is used for ML in Python?",
        answers: [
          AnswerModel(title: "TensorFlow"),
          AnswerModel(title: "Flask"),
          AnswerModel(title: "React"),
          AnswerModel(title: "Express"),
          AnswerModel(title: "Laravel"),
        ],
        correctAnswer: "TensorFlow",
      ),
      QuestionModel(
        title: "Which is NOT a learning type in ML?",
        answers: [
          AnswerModel(title: "Confirmed Learning"),
          AnswerModel(title: "Supervised Learning"),
          AnswerModel(title: "Unsupervised Learning"),
          AnswerModel(title: "Reinforcement Learning"),
          AnswerModel(title: "Self-Supervised Learning"),
        ],
        correctAnswer: "Confirmed Learning",
      ),
      QuestionModel(
        title: "What is overfitting?",
        answers: [
          AnswerModel(title: "Model fits training data too well"),
          AnswerModel(title: "Model does not run"),
          AnswerModel(title: "Model predicts perfectly"),
          AnswerModel(title: "Model skips training"),
          AnswerModel(title: "Model always guesses"),
        ],
        correctAnswer: "Model fits training data too well",
      ),
      QuestionModel(
        title: "What does AI stand for?",
        answers: [
          AnswerModel(title: "Artificial Intelligence"),
          AnswerModel(title: "Automatic Input"),
          AnswerModel(title: "Advanced Interaction"),
          AnswerModel(title: "Analog Interface"),
          AnswerModel(title: "Assisted Internet"),
        ],
        correctAnswer: "Artificial Intelligence",
      ),
      QuestionModel(
        title: "What is classification in ML?",
        answers: [
          AnswerModel(title: "Predicting categories"),
          AnswerModel(title: "Sorting files"),
          AnswerModel(title: "Naming variables"),
          AnswerModel(title: "Encrypting data"),
          AnswerModel(title: "Storing logs"),
        ],
        correctAnswer: "Predicting categories",
      ),
    ],
  ),
  TopicModel(title: "Mix", questions: []),
];
