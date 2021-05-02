import 'package:flutter/material.dart';
import 'package:login_page/screen/background.dart';

import 'constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Login Page',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Background(
        image1: 'assets/images/main_top.png',
        image2: 'assets/images/main_bottom.png',
      ),
    );
  }
}
