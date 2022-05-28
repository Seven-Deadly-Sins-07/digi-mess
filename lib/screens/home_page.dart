import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/customer_info.dart';
import 'package:mini_project/screens/customer_registration.dart';
import 'customer_registration.dart';
import 'customer_registration.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //static values
  List<String> _items = ["Umesh Bagade", "Shatayu Nagdeve", "Atharva Dixit", "Om Gharge", "Shrenik Jadhav", "Supriya Pawar", "Riddhi Patil"];
  List<String> customerOnSearch = ["Umesh Bagade", "Shatayu Nagdeve", "Atharva Dixit", "Om Gharge", "Shrenik Jadhav", "Supriya Pawar", "Riddhi Patil"];
  List<String> mob_no = ["9130612961", "8421337102", "1111111111", "2222222222", "3333333333", "4444444444", "5555555555"];
  bool isSearching = false;

  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: !isSearching ?
        Text("Customers"):
        TextField(

              onChanged: (value){
                setState((){
                  customerOnSearch = _items.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
                });
              },
              style: TextStyle(color: Colors.white),
              controller: _textEditingController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.search, color: Colors.white,),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),

              ),
        ),
        actions: <Widget>[
        isSearching ?

          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: (){
              setState((){
                _textEditingController.clear();
                // _textEditingController.text = "";
                this.isSearching = false;
              });
            },
          ):
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){
            setState((){
              this.isSearching = true;

            });
          },
        ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: _textEditingController.text.isNotEmpty && customerOnSearch.isEmpty?
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.search_off, size: 100,),
                    Text("No results found",style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              )
                  : ListView.builder(
                itemCount: _textEditingController.text.isNotEmpty ? customerOnSearch.length:_items.length,
                itemBuilder: (BuildContext context, int idx){
                  // return idx ==0 ? _searchBar() : _listItem(index-1);
                  return ElevatedButton(
                    // elevation: 2.0,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: ListTile(
                        title: Text(
                            _textEditingController.text.isNotEmpty ? customerOnSearch[idx]: _items[idx],
                        ),
                        subtitle: Text(
                          _textEditingController.text.isNotEmpty ? customerOnSearch[idx]: mob_no    [idx],
                        ),
                        trailing: Icon(Icons.edit),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white70),
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
