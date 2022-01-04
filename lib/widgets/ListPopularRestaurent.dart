import 'package:flutter/material.dart';
import 'package:meal_monkey_app/providers/PPopularRestaurent.dart';
import 'package:meal_monkey_app/widgets/WPopularRestaurent.dart';
import 'package:provider/provider.dart';

class ListPopularRestaurent extends StatelessWidget {
  const ListPopularRestaurent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularRestaurent = Provider.of<PPopularRestaurent>(context);
    final allPopularRestaurent = popularRestaurent.popularRestaurents;

    // return ListView.separated(
    //     shrinkWrap: true,
    //     scrollDirection: Axis.vertical,
    //     itemBuilder: (ctx, i) =>
    //         WPopularRestaurent(item: allPopularRestaurent[i]),
    //     separatorBuilder: (context, index) => SizedBox(
    //           height: 5,
    //         ),
    //     itemCount: allPopularRestaurent.length);

    return Column(
        children: allPopularRestaurent
            .map((e) => WPopularRestaurent(
                  item: e,
                ))
            .toList());
  }
}
