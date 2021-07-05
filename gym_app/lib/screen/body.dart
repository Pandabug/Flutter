import 'package:flutter/material.dart';

import 'components/header_text_input.dart';
import 'package:gym_app/screen/components/to_do_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            height: size.height,
            child: Stack(
              children: <Widget>[
                HeaderTextInput(size: size),
                Positioned(
                  width: size.width,
                  top: size.height * 0.35,
                  left: size.width * 0.06,
                  child: ToDo(size: size),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
