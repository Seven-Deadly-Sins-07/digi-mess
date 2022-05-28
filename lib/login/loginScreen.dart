import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mini_project/constants/arrow_body.dart';
import 'package:mini_project/constants/toastmessage.dart';
import 'package:mini_project/login/login_Input.dart';
import 'package:mini_project/constants/arrow_head.dart';
import 'package:mini_project/constants/buttons.dart';
// <<<<<<< HEAD
import 'package:mini_project/constants/validator.dart';
// =======
import 'package:mini_project/constants/validator.dart';

// >>>>>>> 2b6fb08cb0eed1ea1a59157ea7c76e3d395de395
import '../../screens/home_page.dart';
import '../firebase/flutterfire.dart';


class LoginSceen extends StatefulWidget {
  const LoginSceen({Key? key}) : super(key: key);

  @override
  State<LoginSceen> createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
  final GlobalKey<FormState> _formFieldKey = GlobalKey();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

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
                  padding: const EdgeInsets.all(10.0),
                  child: arrowBody(text: 'Login'),
                ),
                const SizedBox(height: 140.0),
                loginInput(
                  textEditingController: usernamecontroller,
                  text: 'Email',
                  icon: Icons.verified_user,
                  validator: myValidator(requiredField: "Email"),
                ),
                const SizedBox(height: 30.0),
                loginInput(
                  textEditingController: passwordcontroller,
                  text: 'Password',
                  icon: Icons.lock,
                  validator: myValidator(requiredField: "Password"),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 15.0),
                  child: ButtonWidget(
                    backgroundColor: Colors.blue,
                    text: 'Login',
                    textColor: Colors.white,
                    // n: 3,
                    ontap: () async {
                      if (_formFieldKey.currentState!.validate()) {
                        print(usernamecontroller.text);
                        bool shouldNavigate = await signIn(usernamecontroller.text.trim(),passwordcontroller.text.trim());
                        if(shouldNavigate)
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        }
                        else
                          {
                            showToastMessage("Please enter a registered email address");
                          }
                      } else {
                        print("try filling credentials");
                      }
                    },
                  ),
                ),
                const SizedBox(height: 50.0),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ElevatedButton(
                      //     onPressed: () {},
                      //     style: ElevatedButton.styleFrom(
                      //       primary: Colors.transparent,
                      //     ),
                      //     child: const Text('forgot username')),
                      ElevatedButton(
                          onPressed: () async{
                            if(usernamecontroller.text.isNotEmpty)
                            {
                              bool checkEmail = await forgotPassword(
                                  usernamecontroller.text.trim());
                              if (checkEmail) {
                                showToastMessage("An email with reset password link has been sent to given email (Check spam if not found!)");
                              }
                              else
                                {
                                  showToastMessage("Please enter a registered email address");
                                }
                            }
                            else
                              {
                                showToastMessage("Please enter the email");
                              }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: const Text('forgot password')),
                    ],
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
