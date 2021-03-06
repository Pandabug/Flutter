import 'package:flutter/material.dart';
import 'package:simplepage/screen/details/screen%20details/plant_description.dart';

import '../../../costants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({
    // this.image,
    this.price,
    this.country,
    this.title,
  });

  final String /*image, */ title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(
            size: size,
            image: 'assets/icons/back_arrow.svg',
          ),
          TitleAndPrice(title: title, country: country, price: price),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.lightGreenAccent[900],
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlantDescription(
                          size: size,
                        ),
                      ),
                    );
                  },
                  child: Text('Description'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
