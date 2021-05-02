import 'package:flutter/material.dart';

import '../constants.dart';

class SingleContactSelect extends StatelessWidget {
  const SingleContactSelect({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleContactInfo(
          size: size,
          image: 'assets/images/img_1.png',
          title1: 'Gover',
          title2: 'hhhmmmmmm...',
          data: 'Oct 22',
        ),
        SingleContactInfo(
          size: size,
          image: 'assets/images/img_2.png',
          title1: 'Chris Angel',
          title2: 'for magic',
          data: 'Oct 23',
        ),
        SingleContactInfo(
          size: size,
          image: 'assets/images/img_3.png',
          title1: 'Gary, 2 more...',
          title2: 'They were all hanging out.',
          data: 'Oct 22',
        ),
        SingleContactInfo(
          size: size,
          image: 'assets/images/img_10.png',
          title1: 'Chris, 3 more...',
          title2: 'Strange they were all there...',
          data: 'Oct 22',
        ),
        SingleContactInfo(
          size: size,
          image: 'assets/images/img_5.jpg',
          title1: 'Gary, 2 more...',
          title2: 'thisbstuff',
          data: 'Oct 18',
        ),
        SingleContactInfo(
          size: size,
          image: 'assets/images/img_1.png',
          title1: 'Gary Stiles',
          title2: 'Where they currentrly live',
          data: 'Oct 7',
        ),
      ],
    );
  }
}

class SingleContactInfo extends StatelessWidget {
  const SingleContactInfo({
    Key key,
    @required this.size,
    this.image,
    this.title1,
    this.title2,
    this.data,
  }) : super(key: key);

  final Size size;
  final String image, title1, title2, data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      height: 50,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Image.asset(image),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: kDefaultPadding * 2),
              child: Column(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title1\n',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: title2,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Text(
            data,
            style: TextStyle(fontSize: 14, color: Colors.black45),
          ),
        ],
      ),
    );
  }
}
