import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/models/RecentItem.dart';

class WRecentItem extends StatelessWidget {
  final RecentItem? item;
  const WRecentItem({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(item?.imageUrl ?? ""),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item?.title ?? "",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(item?.category ?? "",
                        style: TextStyle(color: CustomColors.secondary)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(item?.type ?? "",
                        style: TextStyle(color: CustomColors.secondary)),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: CustomColors.main,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      item?.rating.toString() ?? "0",
                      style: TextStyle(color: CustomColors.main),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(${item?.ratings.toString()} ratings)",
                      style: TextStyle(color: CustomColors.secondary),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
