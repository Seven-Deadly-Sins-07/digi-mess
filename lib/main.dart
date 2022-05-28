import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/screens/home_page.dart';
import 'screens/welcome_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//<<<<<<< HEAD
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
//=======
      // home: WelcomePage(),
      home: HomePage(),
//>>>>>>> 2b6fb08cb0eed1ea1a59157ea7c76e3d395de395
    );
  }
}

