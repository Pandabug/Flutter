import 'package:flutter/material.dart';

import 'bottom bar/navigation_bar_widget.dart';
import 'screen/body.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageContent(),
    );
  }
}

class HomePageContent extends StatefulWidget {
  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  bool _switch = false;
  ThemeData _dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
  );
  ThemeData _light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Light & Dark'),
          actions: <Widget>[
            Switch(
              value: _switch,
              onChanged: (_newValue) {
                setState(() {
                  _switch = _newValue;
                });
              },
            ),
          ],
        ),
        body: Body(),
        bottomNavigationBar: NavigationBarWidget(),
      ),
    );
  }
}
