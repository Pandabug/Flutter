import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class IconButtonsRow extends StatelessWidget {
  const IconButtonsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue[50],
            ),
            child: IconButton(
              icon: Icon(Icons.align_vertical_top_outlined, color: Colors.blue),
              onPressed: () {},
            ),
          ),
        ), //from here
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/menu.svg',
                color: Colors.grey[600],
              ),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.grey[600]),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child: IconButton(
              icon: Icon(Icons.bookmark_border, color: Colors.grey[600]),
              onPressed: () {},
            ),
          ),
        ), //to here
      ],
    );
  }
}
