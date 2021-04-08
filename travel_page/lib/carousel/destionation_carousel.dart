import 'package:flutter/material.dart';
import 'package:travel_page/models/destination_models.dart';

class DestionationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          child: ListView.builder(
            itemCount: destinations.length,
            itemBuilder: (BuildContext contextx, int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DestinationScreen(
                      destination: destination,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
