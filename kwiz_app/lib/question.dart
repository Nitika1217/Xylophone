class Question {
  late String question;
  late bool answer;

  Question({required String q, required bool a}) {
    question = q;
    answer = a;
  }
}

class Question_Bank {
  int question_no = 0;

  List<Question> question = [
    Question(q: 'The Capital of India is New Delhi', a: true),
    Question(q: 'Factorial of 5 is 150', a: false),
    Question(q: 'Peacock is the national animal of India', a: false),
    Question(q: '17 + 13 = 30', a: true),
    Question(q: 'Formula of Hydrochloric Acid is HCl', a: true)
  ];

  void nextQuestion() {
    if (question_no < question.length - 1) {
      question_no++;
    }
  }

  String getQuestion() {
    return question[question_no].question;
  }

  bool getAnswer() {
    return question[question_no].answer;
  }

  bool isFinished() {
    if (question_no == question.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
