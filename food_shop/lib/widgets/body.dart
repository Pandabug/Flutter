import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25,
        top: 50,
        right: 25,
      ),
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
          Text(
            'Discover food',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodDiscover(title: 'Vanilla flaviour'),
                FoodDiscover(title: 'Chocolate flavior'),
                FoodDiscover(title: 'Chocolate milk'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            children: <Widget>[
              FoodList(
                title: 'Scoops',
                price: '5',
              ),
              FoodList(
                title: 'Scoops',
                price: '10',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FoodList extends StatelessWidget {
  const FoodList({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 230,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/Popsicles.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 15,
          left: 30,
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Starting From',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '\$$price',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FoodDiscover extends StatelessWidget {
  const FoodDiscover({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 10,
        ),
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.close,
              size: 17,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
