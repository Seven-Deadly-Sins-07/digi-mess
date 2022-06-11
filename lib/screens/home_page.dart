import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/screens/customer_registration.dart';
import 'customer_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //static values
  List<String> _items = [
    "Umesh Bagade",
    "Shatayu Nagdeve",
    "Atharva Dixit",
    "Om Gharge",
    "Shrenik Jadhav",
    "Supriya Pawar",
    "Riddhi Patil"
  ];
  List<String> customerOnSearch = [
    "Umesh Bagade",
    "Shatayu Nagdeve",
    "Atharva Dixit",
    "Om Gharge",
    "Shrenik Jadhav",
    "Supriya Pawar",
    "Riddhi Patil"
  ];
  List<String> mob_no = ["9130612961", "8421337102", "1111111111", "2222222222", "3333333333", "4444444444", "5555555555"];
  TextEditingController? _textEditingController = TextEditingController();


  bool showScreen = false;
  List<Map> allInstances = [];


  FirebaseFirestore db = FirebaseFirestore.instance;
  @override
  void initState() {
    db.collection("data").get().then((event) {
      List<Map> allInstances2 = [];
      for (var doc in event.docs) {
        allInstances2.add(doc.data());
      }
      setState(() {
        showScreen = true;
        allInstances = allInstances2;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      // appBar: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.only(left: 70.0),
      //     child: Text('Customers', style: TextStyle(fontSize: 25.0),),
      //   ),
      // ),
      body: showScreen ? Container(
          // color: Colors.black,
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    customerOnSearch = _items
                        .where((element) =>
                            element.toLowerCase().contains(value.toLowerCase()))
                        .toList();
                  });
                },
                controller: _textEditingController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Search'),
              ),
            ),
          ),
          Expanded(
            child: _textEditingController!.text.isNotEmpty &&
                    customerOnSearch.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 100,
                        ),
                        Text(
                          "No results found",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: _textEditingController!.text.isNotEmpty
                        ? customerOnSearch.length
                        : allInstances.length,
                    itemBuilder: (BuildContext context, int idx) {
                      // return idx ==0 ? _searchBar() : _listItem(index-1);
                      return ElevatedButton(

                        // elevation: 2.0,
                        // child: Padding(
                        //   padding: EdgeInsets.all(10.0),
                        //   child: ListTile(
                        //     title: Text(
                        //       _textEditingController!.text.isNotEmpty ? customerOnSearch[idx]: _items[idx],
                        //     ),
                        //     subtitle: Text(
                        //       _textEditingController!.text.isNotEmpty ? customerOnSearch[idx]: mob_no[idx],
                        //     ),
                        //     trailing: Icon(Icons.edit),
                        //   ),
                        // ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text(
                               allInstances[idx]['name'],
                            ),
                            subtitle: Text(
                              allInstances[idx]['contact1'],
                            ),
                            trailing: Icon(Icons.edit),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white38),
                        ),
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CustomerInfo()),
                          );
                        },
                      );
                    },
                  ),
          )
        ],
      )) : Container(
        child: Text('Loading...'),
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




//
// return ElevatedButton(
// onPressed: () {
// Navigator.push(context,
// MaterialPageRoute(builder: (context) {
// return CustomerInfo();
// }));
// },
// child: Card(
// elevation: 2.0,
// child: Padding(
// padding: EdgeInsets.all(10.0),
// child: ListTile(
// title: Text(
// _textEditingController!.text.isNotEmpty
// ? customerOnSearch[idx]
// : _items[idx],
// ),
// trailing: Icon(Icons.edit),
// ),
// ),
// // color: Colors.white60,
// ),
// );
