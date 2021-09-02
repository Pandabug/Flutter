import 'package:flutter/material.dart';
import 'package:food_shop/widgets/discover_food.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        top: 50,
        right: 25,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.dashboard_customize_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 30),
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
              ],
            ),
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

class WeRecommend extends StatelessWidget {
  const WeRecommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'We Recommend',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecomendedFood(),
              ],
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class RecomendedFood extends StatelessWidget {
  const RecomendedFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 220,
          height: 100,
          color: Colors.red,
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Scoops.jpg'),
              ),
            ],
          ),
        ),
        Positioned(
          right: 30,
          top: 20,
          child: Column(
            children: <Widget>[
              Text(
                'Japanese',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Starting From',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
