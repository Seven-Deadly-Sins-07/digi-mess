import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/arrow_body.dart';
import 'package:mini_project/constants/arrow_head.dart';
import 'package:mini_project/constants/buttons.dart';
import 'package:mini_project/signIn/signin_input.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(
          left: 25.0,
          right: 30.0,
        ),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40.0),
                const arrowHead(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: arrowBody(text: 'Sign-in'),
                ),
                SizedBox(height: 50.0),

                SignInInput(icon: Icons.person, hintText: 'Name'),
                SizedBox(height: 10.0),
                SignInInput(icon: CupertinoIcons.building_2_fill, hintText: 'Mess name'),
                SizedBox(height: 10.0),
                SignInInput(icon: Icons.phone, hintText: 'Contact number'),
                SizedBox(height: 10.0),
                SignInInput(icon: Icons.email, hintText: 'Gmail'),
                SizedBox(height: 10.0),
                SignInInput(icon: Icons.location_on_sharp, hintText: 'Mess address'),
                SizedBox(height: 10.0),
                SignInInput(icon: Icons.note_add, hintText: 'Mess registration number'),
                SizedBox(height: 10.0),
                SignInInput(icon: Icons.lock_outline, hintText: 'Password'),
                SizedBox(height: 50.0),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: ButtonWidget(backgroundColor: Colors.blue, text: 'Sign-in', textColor: Colors.white, n: 3),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: ButtonWidget(backgroundColor: Colors.blue, text: 'Login', textColor: Colors.white, n: 3),
                ),

              ],
            ),
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/chef2.jpg"),
            opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
