import 'package:flutter/material.dart';

class arrowHead extends StatefulWidget {
  const arrowHead({Key? key}) : super(key: key);

  @override
  State<arrowHead> createState() => _arrowHeadState();
}

class _arrowHeadState extends State<arrowHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
        iconSize: 40.0,
      ),
    );
  }
}

