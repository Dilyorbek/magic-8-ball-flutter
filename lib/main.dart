import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue.shade800),
      home: Scaffold(
        backgroundColor: Colors.blue.shade400,
        appBar: AppBar(
          title: Center(child: Text("Ask Me Anything")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MagicBall(),
          ],
        ),
      ),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int choice = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('images/ball$choice.png'),
        onPressed: () {
          setState(() {
            choice = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
