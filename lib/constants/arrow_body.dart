import 'package:flutter/material.dart';

class arrowBody extends StatefulWidget {
  final String text;

  arrowBody({required this.text});

  @override
  State<arrowBody> createState() => _arrowBodyState();
}

class _arrowBodyState extends State<arrowBody> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: widget.text,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
