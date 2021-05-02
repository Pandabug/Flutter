import 'package:flutter/material.dart';

import 'home screen/wrapper_page.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    this.image1,
    this.image2,
  }) : super(key: key);

  final String image1, image2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              image1,
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              image2,
              width: size.width * 0.2,
            ),
          ),
          FirstPage(),
        ],
      ),
    );
  }
}
