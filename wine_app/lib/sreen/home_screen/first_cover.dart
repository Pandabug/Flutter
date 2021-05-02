import 'package:flutter/material.dart';

class FirstCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'In primo piano',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: <Widget>[
              FirstCoverCard(
                image: 'assets/images/vino.jpg',
                title: 'V Per Valdobbladene',
              ),
              FirstCoverCard(
                image: 'assets/images/champagne.jpg',
                title: 'C Per Champagnetor',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FirstCoverCard extends StatelessWidget {
  const FirstCoverCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 300,
      height: 150,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
