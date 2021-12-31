import 'package:flutter/material.dart';
import 'package:meal_monkey_app/CustomColors.dart';
// import 'package:flutter/services.dart';

class StartPage extends StatelessWidget {
  // const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: CustomColors.main.withOpacity(1),
    // ));
    return Scaffold(
        body: ListView(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 2 / 3 + 20,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Image.asset(
                      "assets/images/start-bg-shadow.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Positioned(
                //   left: 0,
                //   right: 0,
                //   bottom: 60,
                //   child: Image.asset(
                //     "assets/images/start-bg-shadow.png",
                //   ),
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.all(30),
          child: Text(
            "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Login",
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
        Container(
            padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Create an Account",
                style: TextStyle(
                    color: CustomColors.main,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side:
                            BorderSide(color: CustomColors.main, width: 1.5))),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            )),
      ],
    ));
  }
}
