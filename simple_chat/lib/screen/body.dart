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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            title1: 'Gover',
            title2: 'hhhmmmmmm...',
          ),
          SingleContactInfo(
            size: size,
            image: 'assets/images/img_1.png',
            title1: 'Chris Angel',
            title2: 'for magic',
          ),
          SingleContactInfo(
            size: size,
            image: 'assets/images/img_1.png',
            title1: 'Gary, 2 more...',
            title2: 'They were all hanging out.',
          ),
          SingleContactInfo(
            size: size,
            image: 'assets/images/img_1.png',
            title1: 'Chris, 3 more...',
            title2: 'Strange they were all there...',
          ),
          SingleContactInfo(
            size: size,
            image: 'assets/images/img_1.png',
            title1: 'Gary, 2 more...',
            title2: 'thisbstuff',
          ),
          SingleContactInfo(
            size: size,
            image: 'assets/images/img_1.png',
            title1: 'Gary Stiles',
            title2: 'Where they currentrly live',
          ),
        ],
      ),
    );
  }
}
