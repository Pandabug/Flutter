import 'package:flutter/material.dart';

import 'package:simplepage/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    // this.image,
    this.title,
    this.country,
    this.price,
  });

  final String /*image, */ title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Body(/*image: image, */ title: title, country: country, price: price),
    );
  }
}
