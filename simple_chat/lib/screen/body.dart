import 'package:flutter/material.dart';

import 'buttons.dart';
import 'header_with_name.dart';
import 'single_contact.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HeaderWithName(size: size),
          ButtonsSelect(),
          SingleContactSelect(size: size),
        ],
      ),
    );
  }
}
