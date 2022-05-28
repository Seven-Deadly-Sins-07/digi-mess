import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:mini_project/constants/buttons.dart';

class CustomerResult extends StatelessWidget {
  const CustomerResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 28.0),
          child: Text('Customer info'),
        ),
      ),
    );
  }
}
