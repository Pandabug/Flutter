import 'package:flutter/material.dart';

import 'country_with_button.dart';
import 'header_text.dart';
import 'useful_tools.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderText(),
          CountryWithButton(),
          UsefulTools(),
        ],
      ),
    );
  }
}
