import 'package:flutter/material.dart';
import 'package:meal_monkey_app/CustomColors.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Column(
              children: [
                Text(
                  "We have sent an OTP to your Mobile",
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColors.primary,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please check your mobile number 071*****12 continue to reset your password",
                  style: TextStyle(fontSize: 14, color: CustomColors.secondary),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      style:
                          TextStyle(color: CustomColors.primary, fontSize: 20),
                      textAlign: TextAlign.center,
                      cursorColor: CustomColors.secondary,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          fillColor: CustomColors.grey,
                          filled: true,
                          hintText: '*',
                          hintStyle: TextStyle(color: CustomColors.placeholder),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextField(
                      style:
                          TextStyle(color: CustomColors.primary, fontSize: 20),
                      textAlign: TextAlign.center,
                      cursorColor: CustomColors.secondary,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          fillColor: CustomColors.grey,
                          filled: true,
                          hintText: '*',
                          hintStyle: TextStyle(color: CustomColors.placeholder),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextField(
                      style:
                          TextStyle(color: CustomColors.primary, fontSize: 20),
                      textAlign: TextAlign.center,
                      cursorColor: CustomColors.secondary,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          fillColor: CustomColors.grey,
                          filled: true,
                          hintText: '*',
                          hintStyle: TextStyle(color: CustomColors.placeholder),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextField(
                      style:
                          TextStyle(color: CustomColors.primary, fontSize: 20),
                      textAlign: TextAlign.center,
                      cursorColor: CustomColors.secondary,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          fillColor: CustomColors.grey,
                          filled: true,
                          hintText: '*',
                          hintStyle: TextStyle(color: CustomColors.placeholder),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: CustomColors.main.withOpacity(0))),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                    ),
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextButton(
                onPressed: () {},
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
          Container(
              margin: EdgeInsets.only(bottom: 40, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't Receive?",
                    style: TextStyle(color: CustomColors.secondary),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                          color: CustomColors.main,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
