import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          'Grocery Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Text(
                      'INCOME :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: Container(
                          child: Center(
                            child: Text('4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,

                                )),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(7.0),

                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 2.0),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'GROCERY \n EXPENDITURE :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
                        child: Container(
                          child: Center(
                            child: Text('4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,

                                )),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 4.0,
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
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'WAGES \n EXPENDITURE :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
                        child: Container(
                          child: Center(
                            child: Text('4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,

                                )),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 4.0,
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
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'VEGETABLES \n EXPENDITURE :',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
                        child: Container(
                          child: Center(
                            child: Text('4000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,

                                )),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 4.0,
                            ),
                            borderRadius: BorderRadius.circular(7.0),

                          ),
                        ),
                      )),
                ],
              ),

              FlatButton(
                onPressed: () {},
                child: Container(
                  height: 30.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text('Add'),
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
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
                        width: 4.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imaag.png"),
              opacity: 0.6,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}