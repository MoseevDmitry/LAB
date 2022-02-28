import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyBody.dart';
//import 'MyBody1.dart';

void main() {
  runApp(Myla());
}



class Myla extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Добрый вечер",
              style: TextStyle(fontSize: 35),
            ),
          ),
          body: Column(
            children: [MyButton(), MyButton(), MyButton()],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
          )));
}
}

class MyButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int value = 0;
  double fontSize = 22;
  Color color = Colors.blue;
  Color buttonFontColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          value <= 20 ? "Значение: $value" : "Больше 20",
          style: TextStyle(fontSize: fontSize, color: buttonFontColor),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          setState(() {
            value = value + 1;
            if (value > 10) {
              fontSize = 50;
            }
            if (value > 20) {
              color = Colors.red;
            }
            if (value > 5) {
              buttonFontColor = Colors.yellow;
            }
          });
        });
  }
}