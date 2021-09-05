import 'package:flutter/material.dart';

class WeRecommend extends StatelessWidget {
  const WeRecommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'We Recommend',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(width: 10),
              RecommendFood(
                image: 'assets/Scoops.jpg',
                title: 'Japanese',
                price: 10,
                stars: 4,
              ),
              SizedBox(width: 10),
              RecommendFood(
                image: 'assets/Popsicles.jpg',
                title: 'Japanese',
                price: 2,
                stars: 3,
              ),
              SizedBox(width: 10),
              RecommendFood(
                image: 'assets/Scoops.jpg',
                title: 'Italian',
                price: 2,
                stars: 4,
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendFood extends StatelessWidget {
  const RecommendFood({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
    required this.stars,
  }) : super(key: key);

  final String image, title;
  final int price, stars;

  Text _buildRatingStars(int rating) {
    String stars = '';
    if (rating > 5) rating = 5;
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100,
          width: 210,
          margin: EdgeInsets.only(
            left: 35,
            top: 20,
            right: 0,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 80,
              top: 10,
              right: 0,
              bottom: 20,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  title,
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
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Spacer(),
                    _buildRatingStars(stars),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 15,
          bottom: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image(
              width: 110,
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
