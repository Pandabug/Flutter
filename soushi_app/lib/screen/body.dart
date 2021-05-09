import 'package:flutter/material.dart';

import 'sections/bottom.dart';
import 'sections/middle.dart';
import 'sections/top.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          TopIconTitleIcon(size: size),
          ButtonsSwitch(size: size),
          Soushi(size: size),
        ],
      ),
    );
  }
}
