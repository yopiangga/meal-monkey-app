import 'package:flutter/material.dart';
import 'package:meal_monkey_app/customs/CustomColors.dart';
import 'package:meal_monkey_app/providers/PBottomNavBar.dart';
import 'package:meal_monkey_app/providers/PCategoryFood.dart';
import 'package:meal_monkey_app/providers/PLatestOffer.dart';
import 'package:meal_monkey_app/providers/PMenuFood.dart';
import 'package:meal_monkey_app/providers/PMostPopular.dart';
import 'package:meal_monkey_app/providers/PPopularRestaurent.dart';
import 'package:meal_monkey_app/providers/PRecentItem.dart';
import 'package:meal_monkey_app/providers/PSubMenuFood.dart';
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
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: CustomColors.primary,
          ),
        ),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PBottomNavBar()),
          ChangeNotifierProvider(create: (context) => PCategoryFood()),
          ChangeNotifierProvider(create: (context) => PPopularRestaurent()),
          ChangeNotifierProvider(create: (context) => PMostPopular()),
          ChangeNotifierProvider(create: (context) => PRecentItem()),
          ChangeNotifierProvider(create: (context) => PMenuFood()),
          ChangeNotifierProvider(create: (context) => PSubMenuFood()),
          ChangeNotifierProvider(create: (context) => PLatestOffer()),
        ],
        child: MainPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
