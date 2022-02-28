import 'package:flutter/material.dart';

class TextL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text (
        'Слева',
        style: TextStyle(fontSize: 30, fontFamily: 'Doom', color: Colors.deepOrangeAccent,
          //fontWeight: FontWeight.bold,
        )
    ) ;
  }
}