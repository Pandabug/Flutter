import 'package:flutter/material.dart';

import '../constants.dart';

class SingleContactInfo extends StatelessWidget {
  const SingleContactInfo({
    Key key,
    @required this.size,
    this.image,
    this.title1,
    this.title2,
  }) : super(key: key);

  final Size size;
  final String image, title1, title2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      height: 40,
      child: Row(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title2\n',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: title2,
                      style: TextStyle(
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
