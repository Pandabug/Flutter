import 'package:flutter/material.dart';

class ButtonsSwitch extends StatelessWidget {
  const ButtonsSwitch({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonSwitchCard(
          size: size,
          title: 'Lista',
          backgroundColor: Colors.tealAccent[700],
          textColor: Colors.grey[50],
        ),
        ButtonSwitchCard(
          size: size,
          title: 'Mappa',
          backgroundColor: Colors.white,
          textColor: Colors.grey,
        ),
      ],
    );
  }
}

class ButtonSwitchCard extends StatelessWidget {
  const ButtonSwitchCard({
    Key key,
    @required this.size,
    this.title,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  final String title;
  final backgroundColor, textColor;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.45,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor,
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: TextButton(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
