import 'package:flutter/material.dart';
import '../../screens/home_page.dart';
import 'package:mini_project/login/loginScreen.dart';
import 'package:mini_project/signIn/signinScreen.dart';
import '../screens/customer_registration.dart';

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
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(300.0, 65.0),
        primary: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        )
      ),
      onPressed: (){
        ontap();
      },
       //onPressed
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
/*minWidth: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      onPressed: () {
        ontap();
      },*/
