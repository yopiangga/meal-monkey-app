import 'package:flutter/material.dart';
import 'package:meal_monkey_app/providers/PRecentItem.dart';
import 'package:meal_monkey_app/widgets/WRecentItem.dart';
import 'package:provider/provider.dart';

class ListRecentItem extends StatelessWidget {
  const ListRecentItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recentItem = Provider.of<PRecentItem>(context);
    final allRecentItem = recentItem.recentItems;
    return Column(
      children: allRecentItem
          .map((e) => WRecentItem(
                item: e,
              ))
          .toList(),
    );
  }
}
