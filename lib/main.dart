import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Ask Me Anything!"),
            backgroundColor: Colors.blueGrey,
          ),
          body: MagicBall(),
        ),
      ),
    );


class MagicBall extends StatefulWidget {

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
            });
          },
            child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
