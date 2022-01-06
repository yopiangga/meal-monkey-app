import 'package:flutter/material.dart';
import 'package:meal_monkey_app/providers/PLatestOffer.dart';
import 'package:meal_monkey_app/widgets/WLatesOffer.dart';
import 'package:provider/provider.dart';

class ListLatestOffer extends StatelessWidget {
  const ListLatestOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final latestOffers = Provider.of<PLatestOffer>(context);
    final allLatestOffers = latestOffers.latesOffers;
    return Column(
      children: allLatestOffers.map((e) => WLatesOffer(item: e,)).toList(),
    );
  }
}
