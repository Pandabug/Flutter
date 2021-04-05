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
      height: 50,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Image.asset(image),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: kDefaultPadding * 2),
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title1\n',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: title2,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
