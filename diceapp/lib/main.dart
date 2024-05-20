import 'package:flutter/material.dart';
import 'Dice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Dice App', home: DiceApp());
  }
}
