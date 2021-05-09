import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopIconTitleIcon extends StatelessWidget {
  const TopIconTitleIcon({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: size.width,
      height: size.height * 0.1,
      color: Colors.tealAccent[700],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              color: Colors.grey[50],
            ),
            onPressed: () {},
          ),
          Text(
            'Too Good To Go',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.grey[50],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.grey[50],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
