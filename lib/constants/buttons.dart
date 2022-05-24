import 'package:flutter/material.dart';
import 'package:mini_project/home_page.dart';
import 'package:mini_project/login/loginScreen.dart';
import 'package:mini_project/signIn/signinScreen.dart';
import 'package:mini_project/customer_registration.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final int n;

  ButtonWidget({required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.n});


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: double.maxFinite,
      height: MediaQuery
          .of(context)
          .size
          .height / 14,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      onPressed: () {
        if (n == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoginSceen();
          }));
        }
        if (n == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SignInScreen();
          }));
        }if (n == 3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HomePage();
          }));
        }
        if (n == 4) {
          Navigator.pop(context);
        }
      }, //onPressed
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, color: textColor, fontWeight: FontWeight.bold),
        ),),

    );
  }
}
