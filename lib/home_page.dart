import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/screens/customer_registration.dart';
// import 'package:mini_project/customer_registration.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  //static values
  List<String> _items = ["Umesh Bagade", "Shatayu Nagdeve", "Atharva Dixit", "Om Gharge", "Shrenik Jadhav", "Supriya Pawar", "Riddhi Patil"];
  List<String> customerOnSearch = ["Umesh Bagade", "Shatayu Nagdeve", "Atharva Dixit", "Om Gharge", "Shrenik Jadhav", "Supriya Pawar", "Riddhi Patil"];
  TextEditingController? _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Text('Customers', style: TextStyle(fontSize: 25.0),),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(30),
                ),

                child: TextField(
                  onChanged: (value){
                   setState((){
                     customerOnSearch = _items.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
                   });
                  },
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    hintText: 'Search'
                  ),
                ),
              ),
            ),
            Expanded(
              child: _textEditingController!.text.isNotEmpty && customerOnSearch.isEmpty?
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search_off, size: 100,),
                    Text("No results found",style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              )
                  : ListView.builder(
                itemCount: _textEditingController!.text.isNotEmpty ? customerOnSearch.length:_items.length,
                itemBuilder: (BuildContext context, int idx){
                  // return idx ==0 ? _searchBar() : _listItem(index-1);
                  return Card(
                    elevation: 2.0,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        title: Text(
                            _textEditingController!.text.isNotEmpty ? customerOnSearch[idx]: _items[idx],
                        ),
                        trailing: Icon(Icons.edit),
                      ),
                    ),
                    color: Colors.white60,
                  );
                },
              ),
            )
          ],
        )
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
