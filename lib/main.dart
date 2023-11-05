import 'package:flutter/material.dart';
import 'package:flutter_ful_guide/data/quiz_data.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappState();
  }
}

class MyappState extends State<MyApp> {
  var questionIndex = 0;
  int finalResult = 0;
  

  void answerClick(int result) {
    finalResult += result;

    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      finalResult = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: questionIndex < questions.length
          ? Quiz(questions, questionIndex, answerClick)
          : Result(finalResult, resetQuiz),
    ));
  }
}
