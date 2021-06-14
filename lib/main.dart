import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion(String text) {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Your answer: $text');
  }

  @override // explicitly overriding StatelessWidget's built-in build method
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite movie?',
      'What\'s your favorite band?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion('Answer 1')),
          ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion('Answer 2')),
          ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion('Answer 3')),
        ]),
      ),
    );
  }
}
