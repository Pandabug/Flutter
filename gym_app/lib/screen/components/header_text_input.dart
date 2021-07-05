import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderTextInput extends StatelessWidget {
  const HeaderTextInput({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 40,
        right: 40,
      ),
      width: size.width,
      height: size.height * 0.4,
      color: Colors.orange[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/menu.svg'),
            onPressed: () {},
          ),
          SizedBox(height: 20),
          Text(
            'Good Morning \nName',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(left: 20),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: TextField(
              onChanged: (value) => {},
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
