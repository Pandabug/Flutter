import 'package:flutter/material.dart';
import 'package:food_shop/screens/info_food_page.dart';

class DiscoverFood extends StatelessWidget {
  const DiscoverFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              FoodList(
                image: AssetImage('assets/Scoops.jpg'),
                title: 'Scoops',
                price: '5',
              ),
              FoodList(
                image: AssetImage('assets/Popsicles.jpg'),
                title: 'Popsicles',
                price: '10',
              ),
              FoodList(
                image: AssetImage('assets/Scoops.jpg'),
                title: 'Popsicles',
                price: '7',
              ),
              FoodList(
                image: AssetImage('assets/Popsicles.jpg'),
                title: 'Scoops',
                price: '12',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FoodList extends StatelessWidget {
  const FoodList({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String title, price;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InfoFoodPage(
                  title: title,
                  price: price,
                  image: image,
                ),
              ),
            );
          },
          child: Container(
            height: 230,
            width: 160,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 15,
          child: Icon(
            Icons.favorite_border_sharp,
            size: 22,
          ),
        ),
        Positioned(
          bottom: 15,
          left: 45,
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
