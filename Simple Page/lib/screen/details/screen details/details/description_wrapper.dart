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
    return Row(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              IconCard(icon: icon),
              Text(
                title,
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
