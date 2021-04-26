import 'package:flutter/material.dart';

class FirstCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FirstCoverCard(image: ''),
        ],
      ),
    );
  }
}

class FirstCoverCard extends StatelessWidget {
  const FirstCoverCard({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'In primo piano',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              width: 300,
              height: 150,
              color: Colors.yellow,
              child: ClipRRect(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
