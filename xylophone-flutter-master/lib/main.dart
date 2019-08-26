import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound(int soundNumber){
    final player=new AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKey({int songNumber,Color color}){

   return  Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(songNumber);
        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(songNumber: 1, color:Colors.red),
              buildKey(songNumber: 2,color:Colors.orange),
              buildKey(songNumber: 3,color:Colors.yellow),
              buildKey(songNumber: 4,color:Colors.green),
              buildKey(songNumber: 5,color:Colors.teal),
              buildKey(songNumber: 6,color:Colors.blue),
              buildKey(songNumber: 7,color:Colors.purple),

            ],
          ),
        ),
      ),
    );
  }
}


