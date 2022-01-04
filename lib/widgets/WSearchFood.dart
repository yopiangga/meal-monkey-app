import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';

class WSearchFood extends StatelessWidget {
  const WSearchFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColors.placeholder.withOpacity(0.1),
            prefixIcon: Icon(
              Icons.search,
              color: CustomColors.primary,
            ),
            hintText: 'Search food',
            hintStyle: TextStyle(color: CustomColors.placeholder),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: CustomColors.placeholder.withOpacity(0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: CustomColors.placeholder.withOpacity(0),
              ),
            ),
          ),
        ));
  }
}
