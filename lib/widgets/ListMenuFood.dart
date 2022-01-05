import 'package:flutter/material.dart';
import 'package:meal_monkey_app/providers/PMenuFood.dart';
import 'package:meal_monkey_app/widgets/WMenuFood.dart';
import 'package:provider/provider.dart';

class ListMenuFood extends StatelessWidget {
  const ListMenuFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuFood = Provider.of<PMenuFood>(context);
    final allMenuFood = menuFood.menuFoods;

    return Column(
      children: allMenuFood
          .map((e) => WMenuFood(
                item: e,
              ))
          .toList(),
    );
  }
}
