import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_app/models/SubMenuFood.dart';

class PSubMenuFood with ChangeNotifier {
  List<SubMenuFood> _subMenuDesserts = [
    SubMenuFood(
        title: "French Apple Pie",
        imageUrl: "assets/images/dessert-1.png",
        name: "Minute by tuk tuk",
        menu: "Dessert",
        rating: 4.7),
    SubMenuFood(
        title: "Dark Chocolate Cake",
        imageUrl: "assets/images/dessert-2.png",
        name: "Cakes by Tella",
        menu: "Dessert",
        rating: 4.7),
    SubMenuFood(
        title: "Street Shake",
        imageUrl: "assets/images/dessert-3.png",
        name: "Cafe Racer",
        menu: "Dessert",
        rating: 4.7),
    SubMenuFood(
        title: "Fudgy Chewy Brownies",
        imageUrl: "assets/images/dessert-4.png",
        name: "Minute by tuk tuk",
        menu: "Dessert",
        rating: 4.7),
  ];

  List<SubMenuFood> get subMenuDesserts => _subMenuDesserts;
}
