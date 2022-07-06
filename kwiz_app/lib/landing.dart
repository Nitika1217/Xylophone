// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'question.dart';
import 'package:kwiz_app/score_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class landing_page extends StatefulWidget {
  @override
  _landing_pageState createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  Question_Bank question = Question_Bank();
  List<Icon> mark = [];
  int score = 0;

  void checkAnswer(bool userpicked) {
    if (question.isFinished()) {
      Fluttertoast.showToast(
          msg: "Updating Scores!!",
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 4,
          textColor: Colors.yellow,
          fontSize: 24.0);

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Score(score: score)));
    }
    setState(() {
      if (userpicked == question.getAnswer()) {
        score++;
        mark.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        mark.add(Icon(
          Icons.close_sharp,
          color: Colors.red,
        ));
      }
      question.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(question.getQuestion(),
                    style: TextStyle(color: Colors.white, fontSize: 34)),
              ),
            )),
        Expanded(
            child: TextButton(
          onPressed: () {
            checkAnswer(true);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'True',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          style: TextButton.styleFrom(backgroundColor: Colors.green),
        )),
        SizedBox(
          height: 15,
        ),
        Expanded(
            child: TextButton(
          onPressed: () {
            checkAnswer(false);
          },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Text(
                'False',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          style: TextButton.styleFrom(backgroundColor: Colors.red),
        )),
        Row(
          children: mark,
        )
      ]),
    );
  }
}
