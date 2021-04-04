import 'package:flutter/material.dart';
import 'package:simplepage/costants.dart';

import 'back_arrow.dart';

class ArrowPosition extends StatelessWidget {
  const ArrowPosition({
    Key key,
    this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: kDefaultPadding * 3,
          ),
          child: Column(
            children: <Widget>[
              BackArrowIcon(
                image: image,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
