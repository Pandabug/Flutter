import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
    @required this.iconInput,
    @required this.title,
    this.endIconInput,
  }) : super(key: key);

  final iconInput, endIconInput;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 300,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: kPrimaryLightColor,
      ),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                onChanged: (value) => {},
                decoration: InputDecoration(
                  icon: Icon(
                    iconInput,
                    color: kPrimaryColor,
                    size: 22,
                  ),
                  hintText: title,
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    endIconInput,
                    color: kPrimaryColor,
                    size: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
