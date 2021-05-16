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
          HeaderTextInput(size: size),
          ToDo(),
        ],
      ),
    );
  }
}
