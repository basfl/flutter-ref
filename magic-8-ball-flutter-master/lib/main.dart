import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(child: Text("Ask me anything!")),
        ),
        body: Ball());
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: ()=>{
            setState(()=>{
              ballNumber=Random().nextInt(5)+1,
              print("button has been clicked number is $ballNumber"),
            })
         //   print("button has been clicked"),
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}
