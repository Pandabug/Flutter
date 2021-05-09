import 'package:flutter/material.dart';

import 'tools_models.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

void main() => runApp(
      MaterialApp(
        title: "Weather App",
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;
/*
  Future getWeather() async {
    http.Response response = await http.get(
        "http://api.openweathermap.org/data/2.5/weather?q=Boston&appid=90073d45521fa3de4e6be9a249f1685a");
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
      this.description = resutls['weather'][0]['description'];
      this.currently = resutls['weather'][0]['main'];
      this.humidity = resutls['main']['humidity'];
      this.windSpeed = resutls['wind']['speed'];
    });
  }
*/
  @override
  void initState() {
    super.initState();
    // this.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Currently in Boston",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "52\u00B0",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Rain",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60.0),
          Expanded(
            child: ListView.builder(
              itemCount: tools.length,
              itemBuilder: (BuildContext context, int index) {
                Tools tool = tools[index];
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        tool.iconImg,
                        size: 25,
                      ),
                      SizedBox(width: 7),
                      Text(
                        tool.title,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Spacer(),
                      Text(
                        tool.localTitle,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
