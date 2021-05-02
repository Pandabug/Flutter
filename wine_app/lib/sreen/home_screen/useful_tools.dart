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
            // image: 'assets/images/robot.jpg',
            title: 'Sei indeciso?',
          ),
          UsefulToolsCard(
            // image: 'winepp/assets/images/vino.jpg',
            title: 'Fai un regalo',
          ),
          UsefulToolsCard(
            // image: 'assets/winepp/assets/images/per_le_aziende.jpg',
            title: 'Per le aziende',
          ),
          UsefulToolsCard(
            // image: 'winepp/assets/images/consigli.jpg',
            title: 'Consigli',
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
    // return Container(
    //   margin: EdgeInsets.symmetric(
    //     vertical: kDefaultPadding,
    //     horizontal: kDefaultPadding * 0.5,
    //   ),
    //   height: 80,
    //   width: 80,
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(50),
    //     child: Image.asset(
    //       image,
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // );
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 0.2,
      ),
      height: 120,
      width: 110,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding * 0.3),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: AssetImage(image),
              // ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
