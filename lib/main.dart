import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project/screens/home_page.dart';
import 'screens/welcome_page.dart';
import 'screens/home.dart';

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
// <<<<<<< HEAD
//       home: HomePage(),
      home: WelcomePage(),
//     home: Home(),
      debugShowCheckedModeBanner: false,
// =======
// >>>>>>> 2b6fb08cb0eed1ea1a59157ea7c76e3d395de395
    );
  }
}

