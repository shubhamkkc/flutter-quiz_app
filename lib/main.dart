import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappState();
  }
}

class MyappState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    {
      'question': 'what\' is the capital of India ',
      'answers': ['Agra', 'Delhi', 'Jaipur', 'Pune']
    },
    {
      'question': 'what\'s is the National bird',
      'answers': ['Hen', 'Peigon', 'Peacock', 'Crow']
    },
    {
      'question': 'what\'s is the World Largest River',
      'answers': ['Nile', 'Ganga', 'Yamuna', 'Krishna']
    },
  ];

  void answerClick() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: questionIndex < questions.length
          ? Column(
              children: [
                Question(questions[questionIndex]['question'] as String),
                ...(questions[questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answers(answerClick, answer);
                }).toList()
              ],
            )
          : Center(child: Text('you did it')),
    ));
  }
}
