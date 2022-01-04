import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/CategoryFood.dart';
import 'package:meal_monkey_app/providers/PCategoryFood.dart';
import 'package:meal_monkey_app/widgets/WCategoryFood.dart';
import 'package:provider/provider.dart';

class ListCategoryFood extends StatelessWidget {
  // const ListCategoryFood({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryFood = Provider.of<PCategoryFood>(context);
    final allCategoryFood = categoryFood.categoryFood;
    return ListView.separated(
      // padding: EdgeInsets.only(left: 10),
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, i) => WCategoryFood(
        item: allCategoryFood[i],
      ),
      itemCount: allCategoryFood.length,
      separatorBuilder: (context, index) => SizedBox(
        width: 20,
      ),
    );
  }
}
