import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNr = 1;
  int rightDiceNr = 1;

  void randomize() {
    //we add +1 to turn range into 1 - 5
    leftDiceNr = Random().nextInt(6) + 1;
    rightDiceNr = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  randomize();
                });
              },
              child: Image.asset('images/dice$leftDiceNr.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNr.png'),
              onPressed: () {
                setState(() {
                  randomize();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
