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
        children: <Widget>[
          HeaderWithName(size: size),
          Row(
            children: <Widget>[
              ButtonSwitch(
                title: 'Recent activity',
                newColor: Colors.black,
              ),
              ButtonSwitch(
                title: 'Reminders',
                newColor: Colors.grey,
              ),
            ],
          ),
          SingleContactInfo(
            size: size,
            image: 'assets/images/img_1.png',
            title1: 'Daniel',
            title2: 'hmmmmmm...',
          ),
        ],
      ),
    );
  }
}
