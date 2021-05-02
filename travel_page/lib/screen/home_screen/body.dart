import 'package:flutter/material.dart';
import 'package:travel_page/carousel/destionation_carousel.dart';
import 'package:travel_page/carousel/hotel_carousel.dart';

import 'description_see_all.dart';
import 'header_text.dart';
import 'icon_buttons_row.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderText(),
          IconButtonsRow(),
          DescriptionSeeAll(title: 'Top Destionation'),
          DestinationCarousel(),
          DescriptionSeeAll(title: 'Exclusive Hotels'),
          HotelCarousel(),
        ],
      ),
    );
  }
}
