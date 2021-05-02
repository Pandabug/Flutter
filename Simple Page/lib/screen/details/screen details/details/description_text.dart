import 'package:flutter/material.dart';

import '../../../../costants.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 1.1,
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Text(
              'These climb the stem and reach the leaves. The evaporation of water from pores in the leaves pulls water through the plant. This is called transpiration. A plant needs sunlight, carbon dioxide, minerals and water to make food by photosynthesis.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepOrangeAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
