import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/models/LatestOffer.dart';

class WLatesOffer extends StatelessWidget {
  final LatestOffer? item;

  const WLatesOffer({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              item?.imageUrl ?? "",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item?.title ?? "",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
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
                      Text("(${item?.ratings} ratings)",
                          style: TextStyle(color: CustomColors.secondary)),
                      Text(item?.category ?? "",
                          style: TextStyle(color: CustomColors.secondary)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(item?.type ?? "",
                          style: TextStyle(color: CustomColors.secondary)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
