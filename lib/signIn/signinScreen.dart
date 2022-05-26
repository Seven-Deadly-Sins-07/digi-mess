import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/arrow_body.dart';
import 'package:mini_project/constants/arrow_head.dart';
import 'package:mini_project/constants/buttons.dart';
import 'package:mini_project/login/loginScreen.dart';
import 'package:mini_project/signIn/signin_input.dart';
import 'package:mini_project/validator.dart';

import '../../screens/home_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formFieldKey = GlobalKey();

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
          child: Form(
            key: _formFieldKey,
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
                SignInInput(
                  icon: Icons.person,
                  hintText: 'Name',
                  validator: myValidator(requiredField: "name"),
                ),
                SizedBox(height: 10.0),
                SignInInput(
                  icon: CupertinoIcons.building_2_fill,
                  hintText: 'Mess name',
                  validator: myValidator(requiredField: "Mess name"),
                ),
                SizedBox(height: 10.0),
                SignInInput(
                  icon: Icons.phone,
                  hintText: 'Contact number',
                  validator: myValidator(requiredField: "contact number"),
                ),
                SizedBox(height: 10.0),
                SignInInput(
                  icon: Icons.email,
                  hintText: 'Gmail',
                  validator: myValidator(requiredField: "gmail"),
                ),
                SizedBox(height: 10.0),
                SignInInput(
                  icon: Icons.location_on_sharp,
                  hintText: 'Mess address',
                  validator: myValidator(requiredField: "address"),
                ),
                SizedBox(height: 10.0),
                SignInInput(
                  icon: Icons.note_add,
                  hintText: 'Mess registration number',
                  validator: myValidator(requiredField: "Reg. number"),
                ),
                SizedBox(height: 10.0),
                SignInInput(
                  icon: Icons.lock_outline,
                  hintText: 'Password',
                  validator: myValidator(requiredField: ""),
                ),
                SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: ButtonWidget(
                    backgroundColor: Colors.blue,
                    text: 'Sign-in',
                    textColor: Colors.white,
                    // n: 3,
                    ontap: () {
                      if (_formFieldKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      } else {
                        print("try filling credentials");
                      }
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: ButtonWidget(
                    backgroundColor: Colors.blue,
                    text: 'Login',
                    textColor: Colors.white,
                    // n: 3,
                    ontap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginSceen();
                      }));
                    },
                  ),
                ),
              ],
            ),
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
