import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/MostPopular.dart';

class PMostPopular with ChangeNotifier {
  List<MostPopular> _mostPopulars = [
    MostPopular(
        imageUrl: "assets/images/most-popular-1.png",
        title: "Cafe De Bambaa",
        category: "Cafe",
        type: "Western Food",
        rating: 4.9),
    MostPopular(
        imageUrl: "assets/images/most-popular-2.png",
        title: "Burger by Bella",
        category: "Cafe",
        type: "Western Food",
        rating: 4.9),
  ];

  List<MostPopular> get mostPopulars => _mostPopulars;
}
