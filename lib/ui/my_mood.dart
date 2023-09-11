import 'dart:math';
import 'package:flutter/material.dart';
import 'package:predict_my_mood/widgets/button.dart';

class MyMood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyMoodState();
  }
}

class MyMoodState extends State<MyMood> {
  //initial image
  String currentMood = "3";

  //for chaning state
  void changeMood() {
    //Here I set the random number range 5 that means it will return me random integer between 0 to 4 so I set my image file name from 0 to 4.

    int value = Random().nextInt(5);
    setState(() {
      // here I just initilized the random number value into the current_Mood varriable and convert it to string because the name of my image file will be considerd as string.
      currentMood = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //sacfold background color
      backgroundColor: Colors.blueGrey,

      //appbar
      appBar: AppBar(
        title: Text('Predict My Mood',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black26,
        elevation: 0,
      ),

      //body
      body: Column(
        children: [
          //image
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 70, bottom: 70),
            child: Expanded(child: Image.asset("images/$currentMood.png")),
          ),

          //buttons

          buTTon('Predict My Mood', () => changeMood()),
        ],
      ),
    );
  }
}
