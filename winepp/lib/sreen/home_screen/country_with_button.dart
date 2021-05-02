import 'package:flutter/material.dart';

import '../../constants.dart';

class CountryWithButton extends StatelessWidget {
  const CountryWithButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.add_location_alt_sharp,
            size: 20,
            color: Colors.red[900],
          ),
          Text(
            'Corso Italia, 20122 Milano MI, Italia',
            style: TextStyle(fontSize: 14),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.red[800],
            ),
            child: Text(
              'Cambia'.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
