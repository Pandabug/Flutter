import 'package:flutter/material.dart';
import 'package:pay_app/data.dart';

import 'widgets/card_section.dart';
import 'widgets/header.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            height: 120,
            child: WalletHead(),
          ),
          Expanded(child: CardSection()),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
