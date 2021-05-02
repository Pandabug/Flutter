import 'package:flutter/material.dart';

class SecondCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 5),
          Text(
            'Tutte le categorie',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Column(
            children: <Widget>[
              SecondCoverCard(
                image: 'assets/images/wine.jpg',
                title: 'Vino',
              ),
              SecondCoverCard(
                image: 'assets/images/birra.jpg',
                title: 'Birra',
              ),
              SecondCoverCard(
                image: 'assets/images/champagne.jpg',
                title: 'Champagne',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondCoverCard extends StatelessWidget {
  const SecondCoverCard({
    Key key,
    this.image,
    this.size,
    this.title,
  }) : super(key: key);

  final Size size;
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      width: 380,
      height: 120,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: 15,
            bottom: 10,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
