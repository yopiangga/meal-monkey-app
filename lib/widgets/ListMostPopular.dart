import 'package:flutter/material.dart';
import 'package:meal_monkey_app/models/MostPopular.dart';
import 'package:meal_monkey_app/providers/PMostPopular.dart';
import 'package:meal_monkey_app/widgets/WMostPopular.dart';
import 'package:provider/provider.dart';

class ListMostPopular extends StatelessWidget {
  const ListMostPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mostPopular = Provider.of<PMostPopular>(context);
    final allMostPopular = mostPopular.mostPopulars;

    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) => WMostPopular(item: allMostPopular[i]),
        separatorBuilder: (context, index) => SizedBox(
              width: 20,
            ),
        itemCount: allMostPopular.length);
  }
}
