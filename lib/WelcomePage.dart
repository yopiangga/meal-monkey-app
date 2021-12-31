import 'package:flutter/material.dart';
import 'package:meal_monkey_app/CustomColors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int navigasi = 0;

  List<String> images = [
    "assets/images/welcome-1.png",
    "assets/images/welcome-2.png",
    "assets/images/welcome-3.png"
  ];

  List<String> title = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  List<String> description = [
    "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office wherever you are",
    "Real time tracking of your food on the app once you placed the order"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 6 / 10,
            padding: EdgeInsets.all(0),
            child: Image.asset(images[navigasi]),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: navigasi == 0
                          ? CustomColors.main
                          : CustomColors.placeholder,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: navigasi == 1
                          ? CustomColors.main
                          : CustomColors.placeholder,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: navigasi == 2
                          ? CustomColors.main
                          : CustomColors.placeholder,
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 50, 20, 30),
            child: Column(
              children: [
                Text(
                  title[navigasi],
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColors.primary,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  description[navigasi],
                  style: TextStyle(fontSize: 14, color: CustomColors.secondary),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(20, 7, 20, 40),
              child: TextButton(
                onPressed: () {
                  if (navigasi != 2) {
                    setState(() {
                      navigasi = navigasi + 1;
                    });
                  }
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: CustomColors.main))),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(CustomColors.main),
                ),
              )),
        ],
      ),
    );
  }
}
