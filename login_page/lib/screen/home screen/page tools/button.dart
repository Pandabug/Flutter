import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
    this.title,
    this.buttonColor,
    this.textColor,
    this.page,
  }) : super(key: key);

  final String title;
  final buttonColor, textColor, page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: buttonColor),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => page,
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 40,
            child: Text(
              title.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
