import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, int>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score'] as int),
            answer['text'] as String);
      }).toList()
    ]);
  }
}
