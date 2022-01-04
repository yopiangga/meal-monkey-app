import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/widgets/BottomNavBar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1A2E35).withOpacity(0.08),
                    spreadRadius: 3,
                    blurRadius: 12,
                    offset: Offset(3, 0), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                BottomNavBar(icon: Icons.home, title: "Home", index: 0),
                BottomNavBar(
                    icon: Icons.space_dashboard_rounded,
                    title: "Menu",
                    index: 1),
                BottomNavBar(
                    icon: Icons.shopping_bag_rounded,
                    title: "Offers",
                    index: 2),
                BottomNavBar(icon: Icons.person, title: "Profile", index: 3),
                BottomNavBar(
                    icon: Icons.menu_open_rounded, title: "More", index: 4),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // ListView(
              //   children: [
              //     Text("hallo")
              //   ],
              // ),
              Center(
                  child: Text(
                "Page Menu",
                style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                "Page Offer",
                style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                "Page Home",
                style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                "Page Profile",
                style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              Center(
                  child: Text(
                "Page More",
                style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ));
  }
}
