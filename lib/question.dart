import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // questionText can't be changed
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
