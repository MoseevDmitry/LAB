import 'package:flutter/material.dart';

class TextR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text (
        'Справа',
        style: TextStyle(fontSize: 30, fontFamily: 'Doom', color: Colors.deepOrangeAccent,
          //fontWeight: FontWeight.bold,
        )
    ) ;
  }
}
