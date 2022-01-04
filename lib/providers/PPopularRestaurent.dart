import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_app/models/PopularRestaurent.dart';

class PPopularRestaurent with ChangeNotifier {
  List<PopularRestaurent> _popularRestaurents = [
    PopularRestaurent(
        title: "Minute by tuk tuk",
        rating: 4.9,
        ratings: 129,
        category: "Cafe",
        type: "Western Food",
        imageUrl: "assets/images/popular-restaurents-1.png"),
    PopularRestaurent(
        title: "Cafe de Noir",
        rating: 4.9,
        ratings: 129,
        category: "Cafe",
        type: "Western Food",
        imageUrl: "assets/images/popular-restaurents-2.png"),
    PopularRestaurent(
        title: "Bakes by Tella",
        rating: 4.9,
        ratings: 129,
        category: "Cafe",
        type: "Western Food",
        imageUrl: "assets/images/popular-restaurents-3.png"),
  ];

  List<PopularRestaurent> get popularRestaurents => _popularRestaurents;
}
