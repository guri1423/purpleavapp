import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/SignUp.dart';
import 'package:purpleavapp/Screens/first_screen.dart';
import 'package:purpleavapp/Screens/welcom_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'purpleavapp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
      home: WelcomeScreen(),

    );
  }
}