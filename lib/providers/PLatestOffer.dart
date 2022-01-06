import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_app/models/LatestOffer.dart';

class PLatestOffer with ChangeNotifier {
  List<LatestOffer> _latestOffers = [
    LatestOffer(
        imageUrl: "assets/images/latest-offers-1.png",
        title: "Café de Noires",
        type: "Cafe",
        category: "Western Food",
        rating: 4.9,
        ratings: 192),
    LatestOffer(
        imageUrl: "assets/images/latest-offers-2.png",
        title: "Isso",
        type: "Cafe",
        category: "Western Food",
        rating: 4.9,
        ratings: 192),
    LatestOffer(
        imageUrl: "assets/images/latest-offers-3.png",
        title: "Cafe Beans",
        type: "Cafe",
        category: "Western Food",
        rating: 4.9,
        ratings: 192),
  ];

  List<LatestOffer> get latesOffers => _latestOffers;
}
