import 'package:flutter/material.dart';
import 'package:travel_page/constants.dart';

import 'description_see_all.dart';
import 'header_text.dart';
import 'icon_buttons_row.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: kDefaultPadding * 3,
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        child: Column(
          children: <Widget>[
            HeaderText(),
            IconButtonsRow(image: 'assets/icons/back_arrow.svg'),
            DescriptionSeeAll(title: 'Top Destionation')
          ],
        ),
      ),
    );
  }
}
