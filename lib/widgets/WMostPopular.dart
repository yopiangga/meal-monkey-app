import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/models/MostPopular.dart';

class WMostPopular extends StatelessWidget {
  final MostPopular? item;

  const WMostPopular({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 2 / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(child: Image.asset(item?.imageUrl.toString() ?? "")),
          Container(
              width: MediaQuery.of(context).size.width * 2 / 3,
              margin: EdgeInsets.only(bottom: 10),
              child: Image.asset(
                // "assets/images/most-popular-1.png",
                item?.imageUrl ?? "assets/images/most-popular-1.png",
                fit: BoxFit.cover,
              )),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(item?.imageUrl.toString() ?? ""),
                Text(item?.title ?? "",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Text(item?.category ?? "",
                          style: TextStyle(color: CustomColors.secondary)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(item?.type ?? "",
                          style: TextStyle(color: CustomColors.secondary)),
                      SizedBox(
                        width: 25,
                      ),
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
