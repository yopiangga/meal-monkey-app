import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/models/PopularRestaurent.dart';

class WPopularRestaurent extends StatelessWidget {
  final PopularRestaurent? item;

  const WPopularRestaurent({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            child: Image.asset(item?.imageUrl ?? ""),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item?.title ?? "",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
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
                      SizedBox(
                        width: 5,
                      ),
                      Text(item?.category ?? "",
                          style: TextStyle(color: CustomColors.secondary)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(item?.type ?? "",
                          style: TextStyle(color: CustomColors.secondary)),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
