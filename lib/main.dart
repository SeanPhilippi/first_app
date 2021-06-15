import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {
          'text': 'Red',
          'score': 5,
        },
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Tiger', 'score': 10},
        {'text': 'Turtle', 'score': 3},
        {'text': 'Hyena', 'score': 9},
      ]
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text': '2001: A Space Odyssey', 'score': 10},
        {'text': 'Magnolia', 'score': 9},
        {'text': 'Moulin Rouge!', 'score': 9},
        {'text': 'Spirited Away', 'score': 8},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override // explicitly overriding StatelessWidget's built-in build method
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result()),
    );
  }
}
