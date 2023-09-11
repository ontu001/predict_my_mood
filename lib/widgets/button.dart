import 'package:flutter/material.dart';

Widget buTTon(String title, onpressed) {
  return SizedBox(
    height: 60,
    width: 300,
    child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black26)),
        onPressed: onpressed,
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
        )),
  );
}
