import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/CategoryFood.dart';

class WCategoryFood extends StatelessWidget {
  const WCategoryFood({Key? key, this.item}) : super(key: key);

  final CategoryFood? item;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset(item?.imageUrl ?? ""),
          ),
          Text(
            item?.title ?? "",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
