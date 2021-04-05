import 'package:flutter/material.dart';
import 'package:simple_chat/constants.dart';

class ButtonSwitch extends StatelessWidget {
  const ButtonSwitch({
    Key key,
    @required this.title,
    this.newColor,
  }) : super(key: key);

  final String title;
  final newColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 3,
      ),
      height: 40,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: newColor,
            style: BorderStyle.solid, //setted also as default
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        color: Colors.white,
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            color: newColor,
          ),
        ),
      ),
    );
  }
}
