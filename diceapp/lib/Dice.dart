import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceNumber1 = 3;
  int diceNumber2 = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCDFADB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("images/dice$diceNumber1.png"),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("images/dice$diceNumber2.png"),
              ))
            ],
          ),
          RawMaterialButton(
            fillColor: Colors.blueGrey,
            onPressed: () {
              setState(() {
                diceNumber1 = Random().nextInt(6) + 1;
                diceNumber2 = Random().nextInt(6) + 1;
              });

              print("Hello");
            },
            child: Text("Click"),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "${diceNumber1 + diceNumber2}",
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
