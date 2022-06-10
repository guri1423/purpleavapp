import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/Contact_us.dart';
import 'package:purpleavapp/Screens/ForgotPassword.dart';
import 'package:purpleavapp/Screens/Personal_Details.dart';
import 'package:purpleavapp/Screens/SignIn.dart';
import 'package:purpleavapp/Screens/Transactions.dart';
import 'package:purpleavapp/Screens/home.dart';
import 'package:purpleavapp/Screens/logout.dart';
import 'package:purpleavapp/main.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xff9C037F),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "My Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 5,
              shadowColor: Colors.white,
              child: Container(height: 220,
                width:  MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:  MediaQuery.of(context).padding.top),
                      CircleAvatar(
                        radius: 40,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("User Name"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text("username123@gmail.com"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => PersonalDetails()));
                    },
                    child: Container(
                      child: Row(
                        children:const [
                          Icon(Icons.person_outline,color: Colors.black,size: 20,),
                          SizedBox(width: 15,),
                          Text("Personal Details"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => Transaction()));
                    },
                    child: Container(
                      child: Row(
                        children:const [
                          Icon(Icons.access_time ,color: Colors.black,size: 20,),
                          SizedBox(width: 15,),
                          Text("Transaction"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector( onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Contactus()));
                  },
                    child: Container(
                      child: Row(
                        children:const [
                          Icon(Icons.phone,color: Colors.black,size: 20,),
                          SizedBox(width: 15,),
                          Text("Contact Us"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector( onTap: (){
                    Navigator.pop(context);
                    showDialog(context: context,
                        builder:(BuildContext context){
                          return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                  width: 378,
                                  height: 211,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 450,
                                        height: 52,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                                          color: Color(0xffe40613),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Warning",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: "Lato",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Text(
                                        "Your will permanently lose all your reviews,\ntransaction history and profile info. ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xff858585),
                                          fontSize: 14,
                                          fontFamily: "Lato",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 40,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              width: 120,
                                              height: 38,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(4),
                                                color: Color(0xffb3b3b3),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontFamily: "Lato",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              width: 120,
                                              height: 38,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(4),
                                                color: Color(0xffe40613),
                                              ),
                                              child: GestureDetector( onTap: (){
                                                Navigator.pushReplacement(context,
                                                    MaterialPageRoute(builder: (context) => Logout()));
                                              },
                                                child: Center(
                                                  child: Text(
                                                    "Confirm",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily: "Lato",
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )



                              )

                          );

                        }
                    );
                  },
                    child: Container(
                      child: Row(
                        children:const [
                          Icon(Icons.logout,color: Colors.black,size: 20,),
                          SizedBox(width: 15,),
                          Text("Logout"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),


    );
  }
}
