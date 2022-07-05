import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/home.dart';
import 'package:purpleavapp/main.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(



        backgroundColor: Color(0xff5600d4),
        title: Row(
          children: [


            Text('Reviews(10)',
            ),
            Spacer(),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Stack(
              children:[Container(
                width: MediaQuery.of(context).size.width,
                height: 134,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children:[
                    Positioned(
                      left: 15,
                      top: 15,
                      child: CircleAvatar(radius: 25,)
                    ),
                    Positioned(
                      left: 91,
                      top: 19,
                      child: Text(
                        "Katoka Smith",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 91,
                      top: 73,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing\nand typesetting industry. Lorem Ipsum has been the\nindustry's standard dummy text ever since the 1500s,",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 89,
                      top: 45,
                      child: Container(
                        width: 100,
                        height: 19,
                        child: Stack(
                          children:[],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Positioned(
                  left: 309,
                  top: 15,
                  child: Text(
                    "8 May 2022",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),],
            )
          );

        }

    ),
    );
  }
}
