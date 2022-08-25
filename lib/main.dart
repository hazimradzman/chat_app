import 'package:flutter/material.dart';
import 'widgets/login.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {  // async need to add if use await
  WidgetsFlutterBinding.ensureInitialized(); // setup firebase in application
  await Firebase.initializeApp();   // setup firebase in application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: loginPage(),
    );
  }
}

