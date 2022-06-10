import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/groceriesmain.dart';
import 'package:mini_project/screens/customer_registration.dart';
import 'groceriesmain.dart';

import '../home_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> containers = [
      HomePage(),
      GroceriesMain(),
  ];
  final _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:AppBar(
          title: Text("Digi Mess"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Customers",
                ),
                Tab(
                  text: "Expences",
                )
              ],
            )
        ),
        body: TabBarView(
          children: containers,
        ),
        ),
      );
  }
}
