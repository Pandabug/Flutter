import 'package:flutter/material.dart';

class Soushi extends StatelessWidget {
  const Soushi({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SoushiRecomendation(
          size: size,
          image1: 'assets/images/soushi_recomendation1.jpg',
          image2: 'assets/images/bastoncini.jpg',
          remaining: '+5 rimanenti',
          title: 'Soushi',
          timeOpen: 'Oggi 17:00h - 22:00h • 150m',
          oldPrice: '12,00',
          newPrice: '3,99',
        ),
        SizedBox(height: 10),
        SoushiRecomendation(
          size: size,
          image1: 'assets/images/pasta.jpg',
          image2: 'assets/images/forchetta.jpg',
          remaining: '+3 rimanenti',
          title: 'Pasta',
          timeOpen: 'Oggi 19:30h - 21:00h • 75m',
          oldPrice: '19,99',
          newPrice: '4,50',
        ),
        SizedBox(height: 10),
        SoushiRecomendation(
          size: size,
          image1: 'assets/images/pizza.jpg',
          image2: 'assets/images/forchetta-coltello.jpg',
          remaining: '+11 rimanenti',
          title: 'Pizza',
          timeOpen: 'Oggi 16:30h - 23:30h • 25m',
          oldPrice: '9,99',
          newPrice: '6,90',
        ),
      ],
    );
  }
}

class SoushiRecomendation extends StatelessWidget {
  const SoushiRecomendation({
    Key key,
    @required this.size,
    this.remaining,
    this.title,
    this.timeOpen,
    this.oldPrice,
    this.newPrice,
    this.image1,
    this.image2,
  }) : super(key: key);

  final String remaining, title, timeOpen, oldPrice, newPrice, image1, image2;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width * 0.95,
          height: size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(image1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.tealAccent[700],
            ),
            child: Text(
              remaining,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey[50],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: size.height * 0.12,
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              image: DecorationImage(
                image: AssetImage(image2),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Magic Box - $title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    timeOpen,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          bottom: size.height * 0.12,
          child: Container(
            width: 80,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.teal[900],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$oldPrice €',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(
                  '$newPrice €',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
