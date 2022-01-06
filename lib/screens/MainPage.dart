import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/providers/PBottomNavBar.dart';
import 'package:meal_monkey_app/widgets/BottomNavBar.dart';
import 'package:meal_monkey_app/widgets/ListCategoryFood.dart';
import 'package:meal_monkey_app/widgets/ListLatestOffer.dart';
import 'package:meal_monkey_app/widgets/ListMenuFood.dart';
import 'package:meal_monkey_app/widgets/ListMostPopular.dart';
import 'package:meal_monkey_app/widgets/ListPopularRestaurent.dart';
import 'package:meal_monkey_app/widgets/ListRecentItem.dart';
import 'package:meal_monkey_app/widgets/ListSubmenuFood.dart';
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
    _tabController = new TabController(length: 6, vsync: this);
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
        length: 6,
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
              ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  WSearchFood(),
                  Container(
                      // color: CustomColors.main,
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            bottom: 0,
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                color: CustomColors.main,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(0),
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, bottom: 10),
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: ListMenuFood(
                              tabController: _tabController,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              ListView(
                children: [
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    margin: EdgeInsets.only(bottom: 20),
                    child:
                        Text("Find discounts, Offers special meals and more!"),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    margin: EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Check Offers"),
                      style: ElevatedButton.styleFrom(
                        primary: CustomColors.main,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ListLatestOffer(),
                  ),
                ],
              ),
              ListView(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                              child: Image.asset("assets/images/user.png")),
                          TextButton(
                              onPressed: () {},
                              child: Text("Edit Profile",
                                  style: TextStyle(color: CustomColors.main))),
                          Text("Hi there Yopiangga!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          TextButton(
                              onPressed: () {},
                              child: Text("Sign out",
                                  style: TextStyle(
                                      color: CustomColors.placeholder))),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(
                                color: CustomColors.primary, fontSize: 16),
                            cursorColor: CustomColors.secondary,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                fillColor: CustomColors.grey,
                                filled: true,
                                hintText: 'Name',
                                hintStyle:
                                    TextStyle(color: CustomColors.placeholder),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 20, 30, 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(
                                color: CustomColors.primary, fontSize: 16),
                            cursorColor: CustomColors.secondary,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                fillColor: CustomColors.grey,
                                filled: true,
                                hintText: 'Email',
                                hintStyle:
                                    TextStyle(color: CustomColors.placeholder),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 20, 30, 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(
                                color: CustomColors.primary, fontSize: 16),
                            cursorColor: CustomColors.secondary,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                fillColor: CustomColors.grey,
                                filled: true,
                                hintText: 'Mobile No',
                                hintStyle:
                                    TextStyle(color: CustomColors.placeholder),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 20, 30, 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(
                                color: CustomColors.primary, fontSize: 16),
                            cursorColor: CustomColors.secondary,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                fillColor: CustomColors.grey,
                                filled: true,
                                hintText: 'Address',
                                hintStyle:
                                    TextStyle(color: CustomColors.placeholder),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 20, 30, 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(
                                color: CustomColors.primary, fontSize: 16),
                            cursorColor: CustomColors.secondary,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                fillColor: CustomColors.grey,
                                filled: true,
                                hintText: 'Password',
                                hintStyle:
                                    TextStyle(color: CustomColors.placeholder),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 20, 30, 20)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            style: TextStyle(
                                color: CustomColors.primary, fontSize: 16),
                            cursorColor: CustomColors.secondary,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                fillColor: CustomColors.grey,
                                filled: true,
                                hintText: 'Repeat Password',
                                hintStyle:
                                    TextStyle(color: CustomColors.placeholder),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color:
                                            CustomColors.main.withOpacity(0))),
                                contentPadding:
                                    EdgeInsets.fromLTRB(30, 20, 30, 20)),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color: CustomColors.main))),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(20)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              CustomColors.main),
                        ),
                      )),
                ],
              ),
              Center(
                  child: Text(
                "Page More",
                style: TextStyle(
                    color: CustomColors.secondary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
              ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  WSearchFood(),
                  Container(
                    child: ListSubMenuFood(),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
