import 'package:flutter/material.dart';

class GroceriesInput extends StatefulWidget {
  const GroceriesInput({Key? key}) : super(key: key);

  @override
  State<GroceriesInput> createState() => _GroceriesInputState();
}

class _GroceriesInputState extends State<GroceriesInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  Padding(
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Add Income',
                      ),
                    ),
                  )
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
                        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
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
                        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
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
                        padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 1.0),
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
                onPressed: () {},
                child: Container(
                  height: 40.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text('Add', style: TextStyle(fontSize:25.0),),
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
