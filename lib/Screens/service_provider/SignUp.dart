import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:purpleavapp/Modal/SignUp_Modal.dart';
import 'package:purpleavapp/Screens/service_provider/SignIn.dart';
import 'package:flutter/gestures.dart';
import 'package:purpleavapp/Screens/service_provider/first_screen.dart';
import 'package:purpleavapp/Screens/service_provider/home.dart';
import 'package:purpleavapp/Screens/welcom_screen.dart';
import 'package:purpleavapp/Services/ApiServices.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);


  @override
  State<SignUp> createState() => _SignUpState();
}

bool _showPassword = false;

class _SignUpState extends State<SignUp> {




    final TextEditingController _password = TextEditingController();
    final TextEditingController _emailController=TextEditingController();
    final TextEditingController _userController=TextEditingController();
    final TextEditingController _phoneNoController=TextEditingController();



    registration()async {
      debugPrint(_emailController.text);
      debugPrint(_password.text);
      debugPrint(_userController.text);
      debugPrint(_phoneNoController.text);

    }

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

    userSignUp(Register model)async{
      bool ? status = await userRegister(model) ;

      if(status!){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
      }else{
        /// here you can add dialog box
        print("please try again");
      }

    }





    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: SingleChildScrollView(
            child: Column(
                children: [

                  Container(
                    height: 260,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, bottom: 20),
                                child: GestureDetector(onTap: () {
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

                  GestureDetector(onTap: () {
                    showDialog(context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              height: 200,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .end,
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffd72027),
                                                    shape: BoxShape.circle,

                                                  ),
                                                  child: Icon(Icons.close,
                                                    color: Colors.white,
                                                    size: 15,),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(vertical: 5),
                                              child: Container(
                                                width: 289,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(4),
                                                  color: Color(0xff5600d4),
                                                ),
                                                child: Center(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      getImage();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      "Import from gallery",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontFamily: "Lato",
                                                        fontWeight: FontWeight
                                                            .w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(vertical: 5),
                                              child: Container(
                                                width: 289,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(4),
                                                  color: Color(0xff5600d4),
                                                ),
                                                child: Center(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      getImage1();
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      "Import from Camera",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontFamily: "Lato",
                                                        fontWeight: FontWeight
                                                            .w600,
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
                    _image != null ? CircleAvatar(
                      radius: 50, backgroundImage: FileImage(_image!),) : Stack(
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
                      textInputAction: TextInputAction.next,
                      controller: _userController,
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
                      textInputAction: TextInputAction.next,
                      controller: _emailController,
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
                        textInputAction: TextInputAction.next,

                        obscureText: _showPassword,
                        controller: _password,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(12),
                          hintText: 'Enter Password',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                              _showPassword ? Icons.visibility : Icons
                                  .visibility_off,
                            ),
                          ),
                        ),
                      )
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      controller: _phoneNoController,
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
                      onTap: () {

                        userSignUp(Register(
                              name: _userController.text,
                              password: _password.text,
                              email: _emailController.text,
                              phone: _phoneNoController.text,

                            ));
                        // userRegister(Register(
                        //   name: _userController.text,
                        //   password: _password.text,
                        //   email: _emailController.text,
                        //   phone: _phoneNoController.text,
                        //
                        // ));

                          // Navigator.pushReplacement(context, MaterialPageRoute(
                          //     builder: (context) => Home()));

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Color(0xff8600e9), Color(0xff5600d4)],),
                        ),
                        height: 50,
                        alignment: Alignment.center,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: Center(
                          child: Text('Register ', style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: ' Login', style: TextStyle(fontSize: 15,
                          color: Color(0xff5600d4),),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Navigator.pushReplacement(
                                    context, MaterialPageRoute(
                                    builder: (context) => SignIn()));
                                ;
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

