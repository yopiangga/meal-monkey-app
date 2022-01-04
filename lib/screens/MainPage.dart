import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/providers/PBottomNavBar.dart';
import 'package:meal_monkey_app/widgets/BottomNavBar.dart';
import 'package:meal_monkey_app/widgets/ListCategoryFood.dart';
import 'package:meal_monkey_app/widgets/ListMostPopular.dart';
import 'package:meal_monkey_app/widgets/ListPopularRestaurent.dart';
import 'package:meal_monkey_app/widgets/ListRecentItem.dart';
import 'package:meal_monkey_app/widgets/WSearchFood.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  List<String> menuTitle = [
    "Good Morning, Yopiangga!",
    "Menu",
    "Latest Offers",
    "Profile",
    "More"
  ];

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final menuActive = Provider.of<PBottomNavBar>(context).isMenuActive;
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.white.withOpacity(0.1),
            title: Text(
              menuTitle[menuActive],
              style: TextStyle(color: CustomColors.primary),
            ),
            actions: [
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.shopping_cart_rounded,
                  color: CustomColors.primary,
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff1A2E35).withOpacity(0.05),
                    spreadRadius: 3,
                    blurRadius: 12,
                    offset: Offset(3, 0), // changes position of shadow
                  ),
                ]),
            child: Row(
              children: [
                BottomNavBar(
                  icon: Icons.home_rounded,
                  title: "Home",
                  index: 0,
                  tabController: _tabController,
                ),
                BottomNavBar(
                  icon: Icons.space_dashboard_rounded,
                  title: "Menu",
                  index: 1,
                  tabController: _tabController,
                ),
                BottomNavBar(
                  icon: Icons.shopping_bag_rounded,
                  title: "Offers",
                  index: 2,
                  tabController: _tabController,
                ),
                BottomNavBar(
                  icon: Icons.person,
                  title: "Profile",
                  index: 3,
                  tabController: _tabController,
                ),
                BottomNavBar(
                  icon: Icons.menu_open_rounded,
                  title: "More",
                  index: 4,
                  tabController: _tabController,
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListView(
                children: [
                  // Container(
                  //     margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  //     padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  //     child: Row(
                  //       children: [
                  //         Flexible(
                  //             fit: FlexFit.tight,
                  //             child: Text(
                  //               "Good morning Yopiangga",
                  //               style: TextStyle(
                  //                   fontSize: 20, fontWeight: FontWeight.bold),
                  //             )),
                  //         Icon(Icons.shopping_cart_rounded)
                  //       ],
                  //     )),
                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Delivering to"),
                        SizedBox(
                          height: 3,
                        ),
                        DropdownButton<String>(
                          hint: Text('Current location'),
                          items:
                              <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  WSearchFood(),
                  Container(
                    height: 140,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: ListCategoryFood(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              "Popular Restaurents",
                              style: TextStyle(fontSize: 20),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(color: CustomColors.main),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    // height: 140,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ListPopularRestaurent(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              "Most Popular",
                              style: TextStyle(fontSize: 20),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(color: CustomColors.main),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 2 / 3,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: ListMostPopular(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        Flexible(
                            fit: FlexFit.tight,
                            child: Text(
                              "Recent Items",
                              style: TextStyle(fontSize: 26),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View all",
                              style: TextStyle(color: CustomColors.main),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    // height: 140,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: ListRecentItem(),
                  ),
                ],
              ),
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
