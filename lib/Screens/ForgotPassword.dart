import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/ChangePassword.dart';
import 'package:purpleavapp/Screens/SignIn.dart';
import 'package:purpleavapp/Screens/home.dart';
import 'package:purpleavapp/Screens/otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [

                Container(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: GestureDetector( onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => SignIn()));
                            },

                                child: Icon(Icons.arrow_back_ios)),
                          ),
                        ],
                      ),
                      Text('Forgot Password',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      SizedBox(height: 20,),
                      Text('Please enter your email id and get code',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ],
                  ),

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('images/image1.png'

                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff5600d4),
                    ),
                    height: 50,
                    alignment: Alignment.center,
                    width:MediaQuery.of(context).size.width,
                    child: GestureDetector(onTap:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Otp()));

                    },
                      child: Center(
                        child: Text('Continue', style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      ),
                    ),
                  ),
                ),




              ]
          ),
        )
    );
  }
}
