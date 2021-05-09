import 'package:flutter/material.dart';

class Tools {
  IconData iconImg;
  String title;
  String localTitle;

  Tools({
    this.iconImg,
    this.title,
    this.localTitle,
  });
}

List<Tools> tools = [
  Tools(
    iconImg: Icons.thermostat_rounded,
    title: 'Temperature',
    localTitle: '52\u00B0',
  ),
  Tools(
    iconImg: Icons.cloud,
    title: 'Weather',
    localTitle: 'Weatcher',
  ),
  Tools(
    iconImg: Icons.wb_sunny,
    title: 'Temperature Humidity',
    localTitle: '14\u00B0',
  ),
  Tools(
    iconImg: Icons.wrap_text_outlined,
    title: 'Wind Speed',
    localTitle: '12\u00B0',
  ),
];
// thermostat_rounded
