import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/home.dart';

class Contactus extends StatefulWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9C037F),
        title: Row(
          children: [
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Home()));
            },

                child: Icon(Icons.arrow_back_ios)),
            Text('Contact Us',
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(
              "Enter your details and contact us",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: "Lato",
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Lorem Ipsum is simply dummy text of the printing .",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Lato",
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: 365,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                color: Colors.white,
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Name',
                  hintStyle: TextStyle(
                    color: Color(0xffb9b9b9),
                    fontSize: 16,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 365,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                color: Colors.white,
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(
                    color: Color(0xffb9b9b9),
                    fontSize: 16,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 365,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                color: Colors.white,
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                    color: Color(0xffb9b9b9),
                    fontSize: 16,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 365,
              height: 178,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                color: Colors.white,
              ),

              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Message',
                  hintStyle: TextStyle(
                    color: Color(0xffb9b9b9),
                    fontSize: 16,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {

                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9C037F),
                  ),
                  height: 50,
                  alignment: Alignment.center,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Center(
                    child: Text('Submit', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
