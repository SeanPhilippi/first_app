import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(String text) {
    print('Your answer: $text');
  }

  @override // explicitly overriding StatelessWidget's built-in build method
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('The question!'),
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
