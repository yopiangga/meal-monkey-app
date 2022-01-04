import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_app/models/RecentItem.dart';

class PRecentItem with ChangeNotifier {
  List<RecentItem> _recentItems = [
    RecentItem(
        imageUrl: "assets/images/recent-item-1.png",
        title: "Mulberry Pizza by Josh",
        category: "Cafe",
        type: "Western Food",
        rating: 4.9,
        ratings: 129),
    RecentItem(
        imageUrl: "assets/images/recent-item-2.png",
        title: "Barita",
        category: "Cafe",
        type: "Western Food",
        rating: 4.9,
        ratings: 129),
    RecentItem(
        imageUrl: "assets/images/recent-item-3.png",
        title: "Pizza Rush Hour",
        category: "Cafe",
        type: "Western Food",
        rating: 4.9,
        ratings: 129),
  ];

  List<RecentItem> get recentItems => _recentItems;
}
