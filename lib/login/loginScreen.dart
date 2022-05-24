import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/arrow_body.dart';
import 'package:mini_project/login/login_Input.dart';
import 'package:mini_project/constants/arrow_head.dart';
import 'package:mini_project/constants/buttons.dart';

class LoginSceen extends StatefulWidget {
  const LoginSceen({Key? key}) : super(key: key);

  @override
  State<LoginSceen> createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
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
                child: arrowBody(text: 'Login'),
              ),
              const SizedBox(height: 250.0),
              loginInput(text: 'Username', icon: Icons.verified_user),
              const SizedBox(height: 30.0),
              loginInput(text: 'Password', icon: Icons.lock),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 15.0),
                child: ButtonWidget(backgroundColor: Colors.blue, text: 'login', textColor: Colors.white, n: 3),
              ),

              const SizedBox(height: 80.0),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: () {},
                        child: const Text('forgotten username')),
                    FlatButton(
                        onPressed: () {},
                        child: const Text('forgotten password')),
                  ],
                ),
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
