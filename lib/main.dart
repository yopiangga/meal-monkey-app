import 'package:flutter/material.dart';
import 'package:meal_monkey_app/providers/PBottomNavBar.dart';
import 'package:meal_monkey_app/screens/LoginPage.dart';
import 'package:meal_monkey_app/screens/MainPage.dart';
import 'package:meal_monkey_app/screens/NewPasswordPage.dart';
import 'package:meal_monkey_app/screens/OTPPage.dart';
import 'package:meal_monkey_app/screens/ResetPasswordPage.dart';
import 'package:meal_monkey_app/screens/SignUpPage.dart';
import 'package:meal_monkey_app/screens/StartPage.dart';
import 'package:meal_monkey_app/screens/WelcomePage.dart';
import 'package:provider/provider.dart';

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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<PBottomNavBar>(
              create: (context) => PBottomNavBar()),
        ],
        child: MainPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
