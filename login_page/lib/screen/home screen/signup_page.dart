import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/screen/back%20arrow/back_arrow.dart';

import 'page tools/button.dart';
import 'page tools/contact_icon.dart';
import 'page tools/login_button.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
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
                'SignUp'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SvgPicture.asset('assets/icons/signup.svg'),
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
                SizedBox(height: 10),
                Text(
                  'Already have an Account? Sign In',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 40,
                          right: 10,
                        ),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 40,
                        ),
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ContactIcons(
                      icon: 'assets/icons/facebook.svg',
                      press: () {},
                    ),
                    ContactIcons(
                      icon: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                    ContactIcons(
                      icon: 'assets/icons/google-plus.svg',
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
