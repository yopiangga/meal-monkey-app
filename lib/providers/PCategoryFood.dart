import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/CategoryFood.dart';

class PCategoryFood with ChangeNotifier {
  List<CategoryFood> _categoryFood = [
    CategoryFood(imageUrl: "assets/images/group-1.png", title: "Offers"),
    CategoryFood(imageUrl: "assets/images/group-2.png", title: "Sri Lankan"),
    CategoryFood(imageUrl: "assets/images/group-3.png", title: "Italian"),
    CategoryFood(imageUrl: "assets/images/group-4.png", title: "Indian"),
  ];

  List<CategoryFood> get categoryFood => _categoryFood;
}
