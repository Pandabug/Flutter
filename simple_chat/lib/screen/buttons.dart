import 'package:flutter/material.dart';
import 'package:simple_chat/constants.dart';

class ButtonsSelect extends StatelessWidget {
  const ButtonsSelect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ButtonSwitch(
          title: 'Recent activity',
          newColor: Colors.black,
        ),
        ButtonSwitch(
          title: 'Reminders',
          newColor: Colors.grey,
        ),
      ],
    );
  }
}

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
      width: 125,
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          // BorderSide(
          //   width: 1,
          //   color: newColor,
          //   style: BorderStyle.solid,
          // ),
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              color: newColor,
            ),
          ),
        ),
      ),
    );
  }
}
