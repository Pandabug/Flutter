import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_page.dart';
import 'page tools/button.dart';
import 'signup_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 70),
        Center(
          child: Text(
            'Welcome to edu'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: SvgPicture.asset('assets/icons/chat.svg'),
        ),
        Button(
          title: 'Login',
          buttonColor: Colors.deepPurple,
          textColor: Colors.white,
          page: SecondPage(),
        ),
        Button(
          title: 'Signup',
          buttonColor: Colors.white,
          textColor: Colors.black,
          page: ThirdPage(),
        ),
      ],
    );
  }
}
