import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:purpleavapp/Screens/SignIn.dart';
import 'package:flutter/gestures.dart';
import 'package:purpleavapp/Screens/first_screen.dart';
import 'package:purpleavapp/Screens/welcom_screen.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);


  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {

  File? _image;

  getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);

    });
  }
    // if (image ==null) return;
    // final imageTemporary = File(image!.path);
  getImage1() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);

    });
  }



    final TextEditingController _password=TextEditingController();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [

                Container(
                  height: 290,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16, bottom: 20),
                              child: GestureDetector( onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => WelcomeScreen()));
                              },

                                  child: Icon(Icons.arrow_back_ios)),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),


                        Text('SIGN UP',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: 20,),
                        Text('Register to continue',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                  ),

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('images/image1.png'

                      ),
                    ),
                  ),
                ),
                // Container(
                // //   child: CircleAvatar(
                // //     backgroundColor: Colors.grey,
                // //     radius: 60,
                // //     backgroundImage: AssetImage('images/shimla.jpg'),
                // //   ),
                // // ),

                GestureDetector(onTap: (){
                  showDialog(context: context,
                      builder:(BuildContext context){
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: GestureDetector(
                                      onTap:()=>Navigator.pop(context),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 25,
                                                width: 25,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffd72027),
                                                    shape: BoxShape.circle,

                                                ),
                                                child: Icon(Icons.close,color: Colors.white,size: 15,),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 5),
                                            child: Container(
                                              width: 289,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(4),
                                                color: Color(0xff9c037f),
                                              ),
                                              child: Center(
                                                child: GestureDetector(onTap: (){
                                                  getImage();
                                                  Navigator.pop(context);
                                                },
                                                  child: Text(
                                                    "Import from gallery",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: "Lato",
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 5),
                                            child: Container(
                                              width: 289,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(4),
                                                color: Color(0xff9c037f),
                                              ),
                                              child: Center(
                                                child: GestureDetector(onTap: (){
                                                  getImage1();
                                                  Navigator.pop(context);
                                                },
                                                  child: Text(
                                                    "Import from Camera",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontFamily: "Lato",
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 20,),

                                ],
                              ),
                            ),
                          ),
                        );
                      }
                      );

                },
                  child: Container(child:
                  _image !=null ? CircleAvatar( radius: 50,backgroundImage: FileImage(_image!) ,): Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(radius: 50,),
                      Icon(Icons.add_a_photo_outlined
                      ,
                      color: Colors.white,),
                    ],
                  )
                    ),
                ),





                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Enter Full Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      obscureText: _showPassword,
                      controller: _password,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Enter Password',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                            _showPassword ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Enter Phone number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap:(){

                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff9C037F),
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      width:MediaQuery.of(context).size.width,
                      child: GestureDetector(onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      },
                        child: Center(
                          child: Text('Register ', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?  ',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children:  <TextSpan>[
                      TextSpan(text: ' Login', style: TextStyle(fontSize: 15,
                          color: Colors.blueAccent),
                          recognizer: TapGestureRecognizer()..onTap = () async {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));;
                          }),
                    ],
                  ),
                )



              ]
          ),
        )

    );

  }
}