import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app/screen/back%20arrow/back_arrow.dart';

import 'page tools/button.dart';
import 'page tools/login_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key key,
    this.title,
    this.iconInput,
  }) : super(key: key);

  final String title;
  final iconInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            BackArrow(),
            Center(
              child: Text(
                'Login'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: SvgPicture.asset('assets/icons/login.svg'),
            ),
            Column(
              children: <Widget>[
                LoginButton(iconInput: Icons.person, title: 'Peeely@gmail.com'),
                LoginButton(
                  iconInput: Icons.lock,
                  title: 'Password',
                  endIconInput: Icons.visibility,
                ),
                Button(
                  title: 'Login',
                  buttonColor: Colors.deepPurple,
                  textColor: Colors.white,
                ),
                SizedBox(height: 30),
                Text(
                  'Don\'t have an Account? Sign Up',
                  style: TextStyle(color: Colors.deepPurple),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
