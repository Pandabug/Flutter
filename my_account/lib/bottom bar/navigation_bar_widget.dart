import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildBottomNavigationBar(context, Icons.home_rounded),
          buildBottomNavigationBar(context, Icons.search),
          buildBottomNavigationBar(context, Icons.camera_alt),
          buildBottomNavigationBar(context, Icons.notifications),
          buildBottomNavigationBar(context, Icons.person),
        ],
      ),
    );
  }

  Widget buildBottomNavigationBar(context, iconName) => IconButton(
        icon: Icon(
          iconName,
          color: Colors.pinkAccent[100],
        ),
        onPressed: () {},
      );
}
