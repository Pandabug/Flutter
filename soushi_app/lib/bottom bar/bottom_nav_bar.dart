import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: size.width,
      height: size.height * 0.085,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SingleButtonCard(
            title: 'Scopri',
            icon: Icons.map_outlined,
            color: Colors.teal[900],
          ),
          SingleButtonCard(
            title: 'Ricerca',
            icon: Icons.shopping_cart_outlined,
            color: Colors.grey,
          ),
          SingleButtonCard(
            title: 'Preferiti',
            icon: Icons.favorite_border,
            color: Colors.grey,
          ),
          SingleButtonCard(
            title: 'Altro',
            icon: Icons.more_horiz,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class SingleButtonCard extends StatelessWidget {
  const SingleButtonCard({
    Key key,
    this.title,
    this.icon,
    this.color,
  }) : super(key: key);

  final String title;
  final icon, color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: () {},
          color: color,
          iconSize: 25,
        ),
        Text(
          title,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
