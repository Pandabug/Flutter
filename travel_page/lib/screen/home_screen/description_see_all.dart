import 'package:flutter/material.dart';

import '../../constants.dart';

class DescriptionSeeAll extends StatelessWidget {
  const DescriptionSeeAll({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 1.2,
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 15,
              color: Colors.teal[400],
            ),
          )
        ],
      ),
    );
  }
}
