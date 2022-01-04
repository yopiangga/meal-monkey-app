import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/providers/PBottomNavBar.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key, this.icon = Icons.home, this.title = "", this.index = 0})
      : super(key: key);

  final IconData icon;
  final String title;
  final int index;

  // BottomNavBar({this.icon = Icon(Icons.ac_unit), this.title = "", this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Consumer<PBottomNavBar>(
        builder: (context, value, _) => GestureDetector(
              onTap: () {
                value.setMenuActive = index;
                ChangeNotifier();
              },
              child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(icon,
                            size: 28,
                            color: value.isMenuActive == index
                                ? CustomColors.main
                                : CustomColors.placeholder),
                        SizedBox(height: 4),
                        Text(title.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              color: value.isMenuActive == index
                                  ? CustomColors.main
                                  : CustomColors.placeholder,
                              fontWeight: FontWeight.w400,
                            ))
                      ],
                    ),
                  )),
            ));
  }
}
