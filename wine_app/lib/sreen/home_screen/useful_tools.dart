import 'package:flutter/material.dart';

class UsefulTools extends StatelessWidget {
  const UsefulTools({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: <Widget>[
            UsefulToolsCard(
              image: 'assets/images/robot.jpg',
              title: 'Sei indeciso?',
            ),
            UsefulToolsCard(
              image: 'assets/images/vino.jpg',
              title: 'Fai un regalo',
            ),
            UsefulToolsCard(
              image: 'assets/images/per_le_aziende.jpg',
              title: 'Per le aziende',
            ),
            UsefulToolsCard(
              image: 'assets/images/consigli.jpg',
              title: 'Consigli',
            ),
          ],
        ),
      ),
    );
  }
}

class UsefulToolsCard extends StatelessWidget {
  const UsefulToolsCard({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 130,
      width: 110,
      child: Column(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
