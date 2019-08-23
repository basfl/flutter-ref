import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                 CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/pic.jpg'),
                  backgroundColor: Colors.white,
                ),
              Text("Babak Soltanifar",style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico'
              //  backgroundColor: Colors.white

              ),),
              Text("SOFTWARE DEVELOPER",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[100],
                  fontFamily:'Source Sans Pro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone,
                      color: Colors.teal),
                  title: Text("3040000000",style: TextStyle(
                      color: Colors.teal[100],
                      fontSize: 20,
                      fontFamily: 'Source Sans Pro'

                  ),),
                )
              ),

              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                child: ListTile(
                  leading:Icon(Icons.email,
                    color: Colors.teal,) ,
                  title:Text("bas@email.com",style: TextStyle(
                      color: Colors.teal[100],
                      fontSize: 20,
                      fontFamily: "Source Sans Pro"
                  ),) ,
                )
              )
            ],
          )
        ),
      ),
    );
  }
}

