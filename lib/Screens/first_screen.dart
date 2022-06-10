import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/welcom_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: GestureDetector(onTap:(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

      },
        child: Container(

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('images/purple_logo_horizontal.png'),
            ],
          ),
        ),
      )

    );
  }
}
