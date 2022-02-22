import 'package:flutter/material.dart';
import 'package:la/TextL.dart';

import 'ColorCont.dart';
import 'Earth.dart';
import 'Star.dart';
import 'TextR.dart';
import 'TextL.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Star(), ColorCont(), TextL(), Earth(), TextR(), ColorCont(), Star()],
    );
  }
}
