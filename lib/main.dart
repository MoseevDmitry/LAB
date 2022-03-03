import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'MyBody.dart';
//import 'MyBody1.dart';



void main() {
  runApp(Myla());
}

class Myla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.green,
              title: const Text(
                "Добрый вечер",
                style: TextStyle(fontSize: 32, fontFamily: 'Doom', color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
            body: MyBody()));
  }
}

class MyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int value = 0;
  double fontSize = 22;

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [];
    for (int i = 0; i < 1000; i++) {
      ListItem item;
      if (i % 10 == 0) {
        item = HeadItem('$i');
      } else if (i % 5 == 0) {
        item = ColorItem('$i');
      } else {
        item = MessageItem('$i');
      }
      items.add(item);
    }
    return ListView.builder(itemBuilder: (context, index) {
      var item = items[index];
      if (item is MessageItem) {
        return Card(
          shape: RoundedRectangleBorder(
              side: BorderSide( color: Colors.deepPurple, width: 7),
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Text(
            item.message,
            style: TextStyle(fontSize: 35, fontFamily: 'Doom', color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        );
      } else if (item is ColorItem) {
        return SizedBox(width: 20,
            height: 60, child:
            Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide( color: Colors.black87, width: 7),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Text(
                item.color,
                style: TextStyle(color: Colors.grey, fontSize: 40),
                textAlign: TextAlign.center,
              ),
              color: Colors.teal,
            ));
      } else
      if (item is HeadItem)
      {
        return Card(
          shape: RoundedRectangleBorder(
              side: BorderSide( color: Colors.indigo, width: 7),
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Text(
            item.title,
            style: TextStyle(fontSize: 40, color: Colors.redAccent),
            textAlign: TextAlign.center,
          ),
          color: Colors.greenAccent,
        );
      }
      return SizedBox();
    });
  }
}

class ListItem {}

class HeadItem extends ListItem {
  String title;

  HeadItem(this.title);
}

class ColorItem extends ListItem {
  String color;

  ColorItem(this.color);
}

class MessageItem extends ListItem {
  String message;

  MessageItem(this.message);
}
