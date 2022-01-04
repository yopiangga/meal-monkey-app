import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/screens/ResetPasswordPage.dart';
import 'package:meal_monkey_app/screens/WelcomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColors.primary,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add your details to login",
                  style: TextStyle(fontSize: 14, color: CustomColors.secondary),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(color: CustomColors.primary, fontSize: 16),
                    cursorColor: CustomColors.secondary,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: CustomColors.main.withOpacity(0))),
                        fillColor: CustomColors.grey,
                        filled: true,
                        hintText: 'Your Email',
                        hintStyle: TextStyle(color: CustomColors.placeholder),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: CustomColors.main.withOpacity(0))),
                        contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: CustomColors.primary, fontSize: 16),
                    cursorColor: CustomColors.secondary,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: CustomColors.main.withOpacity(0))),
                        fillColor: CustomColors.grey,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: CustomColors.placeholder),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                                color: CustomColors.main.withOpacity(0))),
                        contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20)),
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return WelcomePage();
                  }));
                },
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
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return ResetPasswordPage();
                  }));
                },
                child: Text(
                  "Forgot your password ?",
                  style: TextStyle(
                      color: CustomColors.secondary,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                              color: CustomColors.main.withOpacity(0),
                              width: 1))),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white.withOpacity(0)),
                ),
              )),
          Center(
            child: Text(
              "or Login With",
              style: TextStyle(color: CustomColors.secondary),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Login with facebook",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: CustomColors.blue))),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(CustomColors.blue),
                ),
              )),
          Container(
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              margin: EdgeInsets.only(bottom: 40),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Login with google",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: CustomColors.red))),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(CustomColors.red),
                ),
              )),
          Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(color: CustomColors.secondary),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    child: Text(
                      "Sign Up",
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
