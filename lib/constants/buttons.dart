import 'package:flutter/material.dart';
import 'package:mini_project/home_page.dart';
import 'package:mini_project/login/loginScreen.dart';
import 'package:mini_project/signIn/signinScreen.dart';
import 'package:mini_project/customer_registration.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  // final int n;
  final Function ontap;

  ButtonWidget(
      {required this.backgroundColor,
      required this.text,
      required this.textColor,
      // required this.n,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      onPressed: () {
        ontap();
      }, //onPressed
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
