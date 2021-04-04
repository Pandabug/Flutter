import 'package:flutter/material.dart';
import 'package:simplepage/screen/home/components/featured_plants.dart';

import 'description_text.dart';
import 'description_wrapper.dart';
import 'padding_arrow.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
    this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ArrowPosition(),
          FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
          ),
          DescriptionText(),
          PrincipalInfo(
            image: image,
            title: 'Sun time max 2h.',
            icon: 'assets/icons/sun.svg',
          ),
          PrincipalInfo(
            image: image,
            title: 'Normal temperature about 22°C',
            icon: 'assets/icons/icon_2.svg',
          ),
          PrincipalInfo(
            image: image,
            title: 'Max 1 glass of water at day.',
            icon: 'assets/icons/icon_3.svg',
          ),
          PrincipalInfo(
            image: image,
            title: 'Possibli without wind.',
            icon: 'assets/icons/icon_4.svg',
          ),
        ],
      ),
    );
  }
}
