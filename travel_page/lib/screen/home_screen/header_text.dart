import 'package:flutter/material.dart';

import '../../constants.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: kDefaultPadding * 3,
        left: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Text(
              'What you would like \nto find?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
