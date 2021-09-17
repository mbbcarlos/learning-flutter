import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[700],
          ),
          body: MagicBallWidget(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class MagicBallWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MagicBallWidgetState();
}

class _MagicBallWidgetState extends State<MagicBallWidget> {
  int _ballID = 1;

  void randomize() {
    _ballID = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            randomize();
          });
        },
        child: Image.asset('images/ball$_ballID.png'),
      ),
    );
  }
}
