import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_app/models/MenuFood.dart';

class PMenuFood with ChangeNotifier {
  List<MenuFood> _menuFoods = [
    MenuFood(imageUrl: "assets/images/menu-1.png", title: "Food", items: 120),
    MenuFood(
        imageUrl: "assets/images/menu-2.png", title: "Bevarages", items: 220),
    MenuFood(
        imageUrl: "assets/images/menu-3.png", title: "Desserts", items: 155),
    MenuFood(
        imageUrl: "assets/images/menu-4.png", title: "Promotions", items: 25),
  ];

  List<MenuFood> get menuFoods => _menuFoods;
}
