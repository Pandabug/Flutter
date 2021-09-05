import 'package:flutter/material.dart';

import 'package:food_shop/widgets/discover_food.dart';
import 'package:food_shop/widgets/we_recommend.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IceCreamLoverTop(),
            SizedBox(height: 40),
            DiscoverFood(),
            SizedBox(height: 40),
            WeRecommend(),
          ],
        ),
      ),
    );
  }
}

class IceCreamLoverTop extends StatelessWidget {
  const IceCreamLoverTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 20),
            Icon(
              Icons.dashboard_customize_outlined,
              size: 30,
            ),
            Spacer(),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            SizedBox(width: 20),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ice cream Lover?',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                'Order & Eat.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        onChanged: (value) => {},
                        decoration: InputDecoration(
                          hintText: 'Search your food',
                          fillColor: Colors.red,
                          // filled: true,
                          contentPadding: EdgeInsets.only(
                            top: 15,
                            left: 30,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 32,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.align_vertical_bottom_rounded,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
