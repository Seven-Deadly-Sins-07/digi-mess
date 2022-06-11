import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/screens/groceriesmain.dart';
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
  bool small = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Text("Digi Mess",
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),

              ),
            ),
            bottom: TabBar(
              labelStyle: TextStyle(fontSize: small ? 10.0 : 18.0),
              // labelPadding: EdgeInsetsGeometry(),
              tabs: <Widget>[
                Tab(
                  text: "Customers",
                  height: 70.0,
                ),
                Tab(
                  text: "Expences",
                )
              ],
            )),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
