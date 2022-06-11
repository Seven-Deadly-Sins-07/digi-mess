import 'package:flutter/material.dart';
import 'groceriesInput.dart';

class GroceriesMain extends StatefulWidget {
  const GroceriesMain({Key? key}) : super(key: key);

  @override
  State<GroceriesMain> createState() => _GroceriesMainState();
}

class _GroceriesMainState extends State<GroceriesMain> {

  TextEditingController inputController = TextEditingController();
   int finalMoney = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   centerTitle: true,
      //   title: Text(
      //     'Grocery Page',
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'INCOME :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: inputController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Add Income',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2.0),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'GROCERY \nEXPENDITURE :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 1.0),
                    child: Container(
                      height: 40.0,
                      width: 200.0,
                      child: const Center(
                        child: Text('4000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            )),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(height: 1.0),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'WAGES \nEXPENDITURE :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 1.0),
                    child: Container(
                      height: 40.0,
                      width: 200.0,
                      child: const Center(
                        child: Text('4000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            )),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(height: 1.0),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'VEGETABLES \nEXPENDITURE :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 1.0),
                    child: Container(
                      height: 40.0,
                      width: 200.0,
                      child: const Center(
                        child: Text('4000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            )),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  )),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState((){
                    finalMoney = (4000+4000+4000)-(int.parse(inputController.text));
                  });
                },
                child: Container(
                  // color: Colors.transparent/,
                  height: 50.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'NET TOTAL :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('$finalMoney',style: TextStyle(fontSize: 27.0),),
                  )
                ],
              ),
            ],
          ),
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/imaag.png"),
          opacity: 0.5,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
