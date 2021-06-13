import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // explicitly overriding StatelessWidget's built-in build method
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Sup'),);
  }
}