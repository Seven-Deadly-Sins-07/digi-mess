import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/toastmessage.dart';
import 'package:mini_project/firebase/database.dart';
import 'database.dart';

late var uid;
var firebaseinstance = FirebaseFirestore.instance;

Future<bool> signIn  (String email,String password) async {

  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    return true;
  }
  catch (e) {
    print(e);
    return false;
  }
}


Future<bool> register(String email,String password,String name,String messname,String contactno,String messaddress,String messrn) async {

  try{
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password).then((cred) {
      uid = cred.user?.uid;
    });

    await DatabaseService(uid: uid).updateUserData(name, messname, contactno,messaddress,messrn);
    return true;
  } on FirebaseAuthException catch(e){
    if(e.code== 'weak-password'){
      Fluttertoast.showToast(
          msg: "The password provided is too weak",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      print('The password provided is too weak');

    }
    else if(e.code =='email-already-in-use'){
      Fluttertoast.showToast(
          msg: "The account already exists for that email",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      print('The account already exists for that email');
    }
    return false;
  } catch (e){
    print(e.toString());
    return false;
  }

}

Future <bool> forgotPassword (String email) async{
  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    return true;
  }
  on FirebaseAuthException catch(e){
    print(e);
    return false;
  }
}

Future <bool> customerRegistration (String name, String contact1, String contact2,String address,String college,String gender) async{
  try{
    FirebaseFirestore.instance
        .collection('data')
        .add({
      'name': name,
      'contact1': contact1,
      'contact2':contact2,
      'address':address,
      'college':college,
      'gender':gender});
    return true;
  }
  catch (e){
    return false;
  }


}
