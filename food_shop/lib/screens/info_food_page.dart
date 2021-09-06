import 'package:flutter/material.dart';
import 'package:food_shop/provider.dart';
import 'package:provider/provider.dart';

class InfoFoodPage extends StatefulWidget {
  const InfoFoodPage({
    Key? key,
    this.title,
    this.price,
    this.image,
  }) : super(key: key);

  final title, price, image;

  @override
  _InfoFoodPageState createState() => _InfoFoodPageState();
}

class _InfoFoodPageState extends State<InfoFoodPage> {
  int cont = 1;

  @override
  Widget build(BuildContext context) {
    return Consumer<FoodInfos>(
      builder: (context, foodState, child) => Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Stack(
                children: <Widget>[
                  Container(
                    width: 350,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white70,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 30,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 37,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 60,
                    child: Container(
                      width: 230,
                      height: 230,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 17,
                            offset: Offset(0, 3),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: widget.image,
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    left: 152.5,
                    child: Container(
                      width: 55,
                      height: 133,
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
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              setState(
                                () {
                                  cont += 1;
                                },
                              );
                            },
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black,
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '$cont',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (cont > 1)
                                setState(
                                  () {
                                    cont -= 1;
                                  },
                                );
                            },
                            child: Text(
                              '─',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Icon(
                Icons.power_input_rounded,
                size: 50,
                color: Colors.grey,
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '${widget.title} Ice Cream 🔥',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '⭐5.0',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Fresh scoops ice cream made with all qualityful ingrediencts such as milk, eggs, suger etc.',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Delivery Time',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '⌚ 20 Mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20,
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Total Price',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '\$${widget.price * cont}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  foodState.add(
                    FoodInfo(
                      widget.image,
                      widget.title,
                      widget.price,
                      cont,
                    ),
                  );
                  Navigator.pop(context);
                },
                child: Center(
                  child: Container(
                    width: 300,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
