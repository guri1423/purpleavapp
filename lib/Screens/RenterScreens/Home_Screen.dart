

import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/RenterScreens/viewproducts.dart';
import 'package:purpleavapp/Screens/RenterScreens/wishlist.dart';

class RenterHome extends StatefulWidget {
  const RenterHome({Key? key}) : super(key: key);

  @override
  State<RenterHome> createState() => _RenterHomeState();
}

class _RenterHomeState extends State<RenterHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,



        backgroundColor: Color(0xff5600d4),
        title: Row(
          children: [


            Text('Home',
            ),
            Spacer(),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Wishlist()));
            },
              child: Container(
                child: Row(
                  children: [
                    Image.asset('images/heart.png'),
                    SizedBox(width: 10,),
                    Text('My List',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Lato",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/guitarrenter1.png'),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: 9.46,
                  height: 9.46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                SizedBox(width: 11.31),
                Container(
                  width: 9.46,
                  height: 9.46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff1f1f1),
                  ),
                ),
                SizedBox(width: 11.31),
                Container(
                  width: 9.46,
                  height: 9.46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff1f1f1),
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ViewProducts()));
            },
              child: Container(
                width: 364,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xff5600d4), width: 1.50, ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.search),
                    ),
                    SizedBox(width: 33),
                    Text(
                      "Search here ",
                      style: TextStyle(
                        color: Color(0xff6f6f6f),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/mic.png',
                          color: Color(0xff5600d4)),
                      SizedBox(height: 18),
                      Text(
                        "Microphone",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/podiumMic.png',
                        color: Color(0xff5600d4),),
                      SizedBox(height: 18),
                      Text(
                        "Podium Mic",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/Uplight.png',
                          color: Color(0xff5600d4)),
                      SizedBox(height: 18),
                      Text(
                        "Up Light",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/mic.png',
                          color: Color(0xff5600d4)),
                      SizedBox(height: 18),
                      Text(
                        "Microphone",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/podiumMic.png',
                        color: Color(0xff5600d4),),
                      SizedBox(height: 18),
                      Text(
                        "Podium Mic",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/Uplight.png',
                          color: Color(0xff5600d4)),
                      SizedBox(height: 18),
                      Text(
                        "Up Light",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/mic.png',
                          color: Color(0xff5600d4)),
                      SizedBox(height: 18),
                      Text(
                        "Microphone",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/podiumMic.png',
                      color: Color(0xff5600d4),),
                      SizedBox(height: 18),
                      Text(
                        "Podium Mic",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 106,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffdbdbdb),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 23, bottom: 21, ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Image.asset('images/Uplight.png',
                          color: Color(0xff5600d4)),
                      SizedBox(height: 18),
                      Text(
                        "Up Light",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
