import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/SubMenuFood.dart';
import 'package:meal_monkey_app/providers/PSubMenuFood.dart';
import 'package:meal_monkey_app/widgets/WSubMenuFood.dart';
import 'package:provider/provider.dart';

class ListSubMenuFood extends StatelessWidget {
  const ListSubMenuFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subMenuFood = Provider.of<PSubMenuFood>(context);
    final allSubMenuFood = subMenuFood.subMenuDesserts;

    return Column(
      children: allSubMenuFood.map((e) => WSubMenuFood(item: e)).toList(),
    );
  }
}
