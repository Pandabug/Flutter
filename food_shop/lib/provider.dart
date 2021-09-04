import 'package:flutter/material.dart';

class FoodInfo {
  FoodInfo(
    this.image,
    this.title,
    this.price,
    this.cont,
  );

  AssetImage image;
  String title;
  int price, cont;
}

class FoodInfos extends ChangeNotifier {
  final List<FoodInfo> foodInfos = [];

  void add(FoodInfo item) {
    foodInfos.add(item);
    print(item);
    notifyListeners();
  }

  void remove(item) {
    foodInfos.removeWhere((e) => e.title == item);
    notifyListeners();
  }

  int sum() {
    int totPrice = 0;
    foodInfos.forEach((e) => totPrice += e.price * e.cont);
    return totPrice;
  }
}
