import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/customer_registration.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Text('Customers', style: TextStyle(fontSize: 25.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CustomerRegistration();
          }));
        },
        child: Icon(CupertinoIcons.add),
      ),
    );
  }
}
