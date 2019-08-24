import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dice')),
          backgroundColor: Colors.teal,
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

    int leftDiceNumber=1;
    int rightDiceNumber=1;
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              // flex: 2,
              child: FlatButton(
                onPressed: ()=>{
                setState(()=>{
                  leftDiceNumber=genRandomNumber(),
                  rightDiceNumber=genRandomNumber()
                }),
                print("number is $leftDiceNumber")

                },
                child: Image.asset("images/dice$leftDiceNumber.png",),
              ),

              // Image(image: AssetImage(""),)
            ),
            Expanded(
              // flex: 1,
              child: FlatButton(
                onPressed: ()=>{
                  setState(()=>{
                    leftDiceNumber=genRandomNumber(),
                    rightDiceNumber=genRandomNumber()
                  }),
                  print("number is $rightDiceNumber")

                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),

              // Image(image: AssetImage(""),)
            ),
          ],
        ),
      );
    }

    int genRandomNumber(){
      return Random().nextInt(6)+1;
    }

  }


