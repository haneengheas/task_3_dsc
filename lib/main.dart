import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int numDice= 1;
   // void changeNumDice(){
   //   setState(() {
   //     numDice= Random().nextInt(7);
   //   });
   // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0,0,128, 1),
        appBar: AppBar(centerTitle: true,
          title: Text('Dice',
            style: TextStyle(
            fontSize: 30,
          ),),
          backgroundColor: Color.fromRGBO(0,0,128, 1),
        ),
        body: Center(
          child: FlatButton(
            onPressed: (){
              setState(() {
                numDice= Random().nextInt(6)+1;
              });
            },
            child: Container(
              child: Image.asset('assets/dice$numDice.png',
              width: 300,
              ),
            ),
          ),
        )
      ),
    );
  }
}
