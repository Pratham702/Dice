
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee ' ,
            style: TextStyle(
              color: Colors.black,
            ),
            ),
          backgroundColor: Colors.yellow.shade100,
        ),
        body: Dicepage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void diceNumber(){
    leftDiceNumber=1+Random().nextInt(6);
    rightDiceNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            flex: 1,
            child:
            FlatButton(
                onPressed: (){
                  setState(() {
                    diceNumber();
                    print('left button got pressed');
                  });

                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),

          Expanded(
            flex: 1,
            child:
            FlatButton(
                onPressed: (){
                  setState(() {
                    diceNumber();
                    print('right button got pressed');

                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          )
        ],

      ),
    );
  }
}
