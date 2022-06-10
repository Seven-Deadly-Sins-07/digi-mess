import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  late final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');
  final CollectionReference customerCollection = FirebaseFirestore.instance.collection('data');


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

class CustomerDatabaseService {

  late final String uid;
  CustomerDatabaseService({required this.uid});

  final CollectionReference customerCollection = FirebaseFirestore.instance.collection('customers');

  Future updateUserData(String name, String contact1, String contact2,String address,String college,String gender) async{
    return await customerCollection.doc(uid).set({
      'name' : name,
      'contact1' : contact1,
      'contact2': contact2,
      'address' : address,
      'college': college,
      'gender' : gender
    });
  }

}