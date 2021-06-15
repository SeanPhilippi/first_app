import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Tiger', 'Turtle', 'Owl'],
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        '2001: A Space Odyssey',
        'Magnolia',
        'Moulin Rouge!',
        'Spirited Away'
      ],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
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
        body: _questionIndex < questions.length
            ? Column(children: [
                Question(questions[_questionIndex]['questionText'] as String),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : Center(child: Text('Congrats, you did it!')),
      ),
    );
  }
}
