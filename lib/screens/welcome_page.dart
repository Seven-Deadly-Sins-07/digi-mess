import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/buttons.dart';
import 'package:mini_project/login/loginScreen.dart';
import 'package:mini_project/signIn/signinScreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                  text: 'Digi-Mess',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '\nBetter Mess Management',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.9,
            ),
            ButtonWidget(
              backgroundColor: Colors.indigo.shade900,
              text: 'Login',
              textColor: Colors.white,
              // n: 1,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginSceen();
                }));
              },
            ),
            const SizedBox(height: 20.0),
            ButtonWidget(
              backgroundColor: Colors.white,
              text: 'Sign-up',
              textColor: Colors.black,
              // n: 2,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignInScreen();
                }));
              },
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/chef2.jpg"),
            opacity: 0.7,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
