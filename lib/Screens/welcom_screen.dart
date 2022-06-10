import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/SignUp.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Image.asset('images/login.png'),
                Positioned(child:Image.asset('images/background.png',
                ),
                  top: 80,
                ),

              ]
            ),
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: 'WELCOME ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: "Lato",
                fontWeight: FontWeight.w500,
              ),
              children:  <TextSpan>[
                TextSpan(text: 'PURPLE AV!',
                  style: TextStyle(
                    color: Color(0xff9c037f),
                    fontSize: 22,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Lorem Ipsum is simply dummy text of \nprinting and typesetting industry. Lorem\nIpsum has been the industry's standard\n",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff868686),
              fontSize: 18,
              fontFamily: "Lato",
              fontWeight: FontWeight.w500,
            ),
          ),

          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 289,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xff9c037f),
              ),
              child: Center(
                child: GestureDetector(onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
                },
                  child: Text(
                    "Register as Service Provider",
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
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              width: 289,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xff9c037f), width: 1, ),
              ),
              child: Center(
                child: Text(
                  "Register as Renter",
                  style: TextStyle(
                    color: Color(0xff9c037f),
                    fontSize: 18,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )


        ],
      ),


    );
  }
}
