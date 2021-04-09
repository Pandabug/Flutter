import 'package:flutter/material.dart';
import 'package:travel_page/screen/home_screen/body.dart';

import 'home_screen/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
