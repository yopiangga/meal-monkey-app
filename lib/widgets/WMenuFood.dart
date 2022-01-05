import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/models/MenuFood.dart';

class WMenuFood extends StatelessWidget {
  final MenuFood? item;
  final TabController? tabController;
  const WMenuFood({Key? key, this.item, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tabController?.animateTo(5);
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width - 40,
        margin: EdgeInsets.only(bottom: 25),
        child: Stack(
          children: [
            Positioned(
                left: 40,
                right: 20,
                child: Container(
                    height: 100,
                    padding: EdgeInsets.fromLTRB(70, 20, 30, 20),
                    // width: MediaQuery.of(context).size.width - 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.primary.withOpacity(0.05),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item?.title ?? "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "${item?.items.toString()} items",
                          style: TextStyle(color: CustomColors.placeholder),
                        )
                      ],
                    ))),
            Positioned(
              top: 10,
              child: Container(
                width: 80,
                height: 80,
                child: Image.asset(item?.imageUrl ?? ""),
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: CustomColors.primary.withOpacity(0.05),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
              ),
            ),
            Positioned(
                right: 0,
                child: Container(
                  height: 100,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.primary.withOpacity(0.05),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Icon(
                      Icons.arrow_right,
                      size: 28,
                      color: CustomColors.main,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
