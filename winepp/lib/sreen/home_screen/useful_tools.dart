import 'package:flutter/material.dart';

import '../../constants.dart';

class UsefulTools extends StatelessWidget {
  const UsefulTools({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          UsefulToolsCard(
            image: 'assets/images/robot.jpg',
            title: 'Sei indeciso?',
          ),
          UsefulToolsCard(
            image: 'assets/images/robot.jpg',
            title: 'Sei indeciso?',
          ),
          UsefulToolsCard(
            image: 'assets/images/robot.jpg',
            title: 'Sei indeciso?',
          ),
          UsefulToolsCard(
            image: 'assets/images/robot.jpg',
            title: 'Sei indeciso?',
          ),
        ],
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
      height: 120,
      width: 120,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding * 0.5,
            ),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
