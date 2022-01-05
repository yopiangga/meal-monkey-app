import 'package:flutter/material.dart';
import 'package:meal_monkey_app/providers/PMenuFood.dart';
import 'package:meal_monkey_app/widgets/WMenuFood.dart';
import 'package:provider/provider.dart';

class ListMenuFood extends StatelessWidget {
  final TabController? tabController;
  const ListMenuFood({Key? key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuFood = Provider.of<PMenuFood>(context);
    final allMenuFood = menuFood.menuFoods;

    return Column(
      children: allMenuFood
          .map((e) => WMenuFood(
                item: e,
                tabController: tabController,
              ))
          .toList(),
    );
  }
}
