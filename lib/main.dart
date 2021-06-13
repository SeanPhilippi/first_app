import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // explicitly overriding StatelessWidget's built-in build method
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('The question!'),
          ElevatedButton(child: Text('Answer 1'), onPressed: null),
          ElevatedButton(child: Text('Answer 2'), onPressed: null),
          ElevatedButton(child: Text('Answer 3'), onPressed: null),
        ]),
      ),
    );
  }
}
