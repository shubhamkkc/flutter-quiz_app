import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;
  const Result(this.score, this.resetQuiz);

  String get ResultPharse {
    var resultText;
    if (score > 2)
      return resultText = 'Excellent';
    else if (score == 2)
      return resultText = 'Good';
    else
      return resultText = 'Poor';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text("Your Score: ${score}  ${ResultPharse}",
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 40))),
        TextButton(onPressed: resetQuiz, child: Text('Restart Quiz')),
      ],
    );
  }
}
