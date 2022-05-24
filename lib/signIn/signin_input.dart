import 'package:flutter/material.dart';

class SignInInput extends StatefulWidget {

  final String hintText;
  final IconData icon;

  SignInInput({required this.icon, required this.hintText});

  @override
  State<SignInInput> createState() => _SignInInputState();
}

class _SignInInputState extends State<SignInInput> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(widget.icon, color: Colors.black, size: 30.0),
          hintText: widget.hintText,
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
      ),
    );
  }
}
