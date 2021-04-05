import 'package:flutter/material.dart';
import 'package:simple_chat/constants.dart';

class HeaderWithName extends StatelessWidget {
  const HeaderWithName({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding + 5,
              right: kDefaultPadding + 5,
              bottom: kDefaultPadding,
            ),
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\n\n\n\n\n\nGood afternoon, \nAndrew',
                          style: TextStyle(
                            fontSize: 37,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '\n\nWho have talked with?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//add on top left yellow circle
