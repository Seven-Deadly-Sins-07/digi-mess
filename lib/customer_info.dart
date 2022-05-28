import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:mini_project/constants/buttons.dart';
import 'customer_result.dart';
import 'dart:math';

class CustomerInfo extends StatelessWidget {
  TextEditingController inputcontroller = new TextEditingController();

  num getFees = 0;
  num money = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 28.0),
          child: Text('Customer info'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Absent days : ',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: inputcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 50.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300.0, 65.0),
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  )),
              onPressed: () {
                setState() {
                  getFees = inputcontroller.text as num;
                  money = 2400 - 80 * (getFees);
                }
              },
              //onPressed
              child: const Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              money != null ? '$money' : '',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
