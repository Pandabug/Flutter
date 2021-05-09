import 'package:flutter/material.dart';
import 'package:soushi_app/constants.dart';
import 'package:soushi_app/screen/body.dart';

import 'bottom bar/bottom_nav_bar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoushi App',
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
