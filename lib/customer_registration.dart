import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/arrow_body.dart';
import 'package:mini_project/constants/arrow_head.dart';
import 'package:mini_project/login/login_Input.dart';
import 'package:mini_project/constants/buttons.dart';

class CustomerRegistration extends StatefulWidget {
  const CustomerRegistration({Key? key}) : super(key: key);

  @override
  State<CustomerRegistration> createState() => _CustomerRegistrationState();
}

class _CustomerRegistrationState extends State<CustomerRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(right: 20.0, left: 20.0, top:
        30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              arrowHead(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: arrowBody(text: 'Customer Registration'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/15),
              loginInput(text: 'Name', icon: Icons.person),
              SizedBox(height: 10.0),
              loginInput(text: 'Contact 1', icon: Icons.phone),
              SizedBox(height: 10.0),
              loginInput(text: 'Contact 2', icon: Icons.phone),
              SizedBox(height: 10.0),
              loginInput(text: 'Address', icon: Icons.location_on_sharp),
              SizedBox(height: 10.0),
              loginInput(text: 'College', icon: CupertinoIcons.building_2_fill),
              SizedBox(height: 10.0),
              loginInput(text: 'Gender', icon: CupertinoIcons.person),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: ButtonWidget(backgroundColor: Colors.blue, text: 'Register', textColor: Colors.white, n: 4),
              )
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

