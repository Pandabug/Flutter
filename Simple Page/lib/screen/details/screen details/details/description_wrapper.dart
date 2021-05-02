import 'package:flutter/material.dart';
import 'package:simplepage/screen/details/components/icon_card.dart';

import '../../../../costants.dart';

class PrincipalInfo extends StatelessWidget {
  const PrincipalInfo({
    Key key,
    @required this.image,
    this.title,
    this.icon,
  }) : super(key: key);

  final String image, title, icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: kDefaultPadding * 0.2),
      child: Row(
        children: <Widget>[
          IconCard(icon: icon),
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding * 0.8),
            child: Text(
              title,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
