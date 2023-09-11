import 'package:flutter/material.dart';
import 'package:predict_my_mood/ui/my_mood.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Predict My Mood',
      home: MyMood(),
    );
  }
}
