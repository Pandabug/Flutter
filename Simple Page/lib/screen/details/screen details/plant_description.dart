import 'package:flutter/material.dart';
import 'package:simplepage/screen/details/screen%20details/details/wrapper.dart';

class PlantDescription extends StatelessWidget {
  const PlantDescription({
    @required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(size: size),
    );
  }
}
// add name country price then put on screen with new style
