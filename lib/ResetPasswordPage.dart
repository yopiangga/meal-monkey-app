import 'package:flutter/material.dart';
import 'package:meal_monkey_app/CustomColors.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

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
                  "Reset Password",
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColors.primary,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please enter your email to receive a link to create a new password via email",
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
                        hintText: 'Email',
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
                onPressed: () {},
                child: Text(
                  "Send",
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
