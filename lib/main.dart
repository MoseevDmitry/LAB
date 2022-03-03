import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MyBody.dart';
//import 'MyBody1.dart';

List<String> _items = [];

void main() {
  runApp(Myla());
}

class Myla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Добрый вечер',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: const Color.fromRGBO(43, 24, 45, 11),),
          scaffoldBackgroundColor: const Color.fromRGBO(41, 40, 59, 21),
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int buttonValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Image(
            image: AssetImage('assets/icons/Earth.png'),
            width: 80,
          ),
        ),
        body: ListView(
          children: [
            ElevatedButton(
                child: Text("Текст: $buttonValue", style: TextStyle(fontSize: 22)),
                onPressed:(){ setState(() {
                  buttonValue = buttonValue + 1;

                });} ),
            for ( var i = 0; i < 20; i++)(
                Card(
                  child: ListTile(
                    title: Text("$i лист"),
                  ),)
            ),
          ],
          shrinkWrap: true,
        )
    );
  }
}