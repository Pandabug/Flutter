import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_sharp,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset('assets/avatar.svg'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'My',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Cart List',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 30),
              FoodList(
                image: AssetImage('assets/Scoops.jpg'),
                title: 'Scoops',
                price: '12.50',
              ),
              FoodList(
                image: AssetImage('assets/Popsicles.jpg'),
                title: 'Popsicles',
                price: '12.50',
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Do You have any promo code?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Text(
                    'Subtotal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$25.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Text(
                '------------------------------',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 40,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Total',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$25.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
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
    return Container(
      height: 130,
      width: 350,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    width: 75,
                    height: 75,
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$$price',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text(
                  '+',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  '─',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
