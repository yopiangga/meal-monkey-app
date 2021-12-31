import 'package:flutter/material.dart';
import 'package:meal_monkey_app/LoginPage.dart';
import 'package:meal_monkey_app/NewPasswordPage.dart';
import 'package:meal_monkey_app/OTPPage.dart';
import 'package:meal_monkey_app/ResetPasswordPage.dart';
import 'package:meal_monkey_app/SignUpPage.dart';
import 'package:meal_monkey_app/StartPage.dart';
import 'package:meal_monkey_app/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Monkey',
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
