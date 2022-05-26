import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  late final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String messname, String contactno,String messaddress,String messrn) async{
    return await userCollection.doc(uid).set({
      'name' : name,
      'messname' : messname,
      'contactno': contactno,
      'messaddress' : messaddress,
      'messrn': messrn
    });
  }

}