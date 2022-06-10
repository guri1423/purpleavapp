import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/SignIn.dart';
import 'package:purpleavapp/Screens/home.dart';
import 'package:purpleavapp/Screens/review.dart';
import 'package:purpleavapp/main.dart';

class MyProducts extends StatefulWidget {
  const MyProducts({Key? key}) : super(key: key);

  @override
  State<MyProducts> createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,



        backgroundColor: Color(0xff9C037F),
        title: Row(
          children: [


            Text('My Products',
            ),
        Spacer(),
        GestureDetector( onTap: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => Review()));


        },
          child: Column(
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
                size: 25,
              ),
              Text('Reviews',
               style: TextStyle(
                  color: Colors.white,
                 fontSize: 15,
                 fontFamily: "Lato",
                  ),
              )
            ],
          ),
        )
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x42000000),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Colors.white,
                ),

              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      // height:144,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xfff4f4f4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset('images/electricGuitar.png',
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Thinline Acoustic- Electric\nclassical Guitar Natural",
                            style: TextStyle(
                              color: Color(0xff727171),
                              fontSize: 15,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Rent - \$30/mo',
                            style: TextStyle(
                              color: Color(0xff0a0a0a),
                              fontSize: 18,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(
                                width: 86,
                                height: 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: Color(0xffd3323c), width: 1.20, ),
                                ),
                                child: Center(
                                  child: GestureDetector( onTap: (){
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        SizedBox(height: 30,),
                                                        Text(
                                                          "Are you sure you want to \nremove it?",
                                                          style: TextStyle(
                                                            color: Color(0xff2d2d2d),
                                                            fontSize: 20,
                                                            fontFamily: "Lato",
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                        ),
                                                        SizedBox(height: 20,),
                                                        SizedBox(height: 20,),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children:[
                                                            Container(
                                                              width: 132.39,
                                                              height: 38,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(4),
                                                                color: Color(0xffb3b3b3),
                                                              ),
                                                              child: SizedBox(
                                                                width: 57.61,
                                                                height: 20.84,
                                                                child: Center(
                                                                  child: Text(
                                                                    "Yes",
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
                                                            SizedBox(width: 25,),
                                                            Container(
                                                              width: 132.39,
                                                              height: 38,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(4),
                                                                color: Color(0xff9c037f),
                                                              ),
                                                              child: GestureDetector(onTap: (){
                                                                Navigator.push(context, MaterialPageRoute(
                                                                    builder: (context) => MyProducts()));
                                                              },
                                                                child: Center(
                                                                  child: Text(
                                                                    "No",
                                                                    style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 16,
                                                                      fontFamily: "Lato",
                                                                      fontWeight: FontWeight.w500,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )



                                              )

                                          );

                                        }
                                    );
                                  },
                                    child: Text(
                                      "Remove",
                                      style: TextStyle(
                                        color: Color(0xffd3323c),
                                        fontSize: 14,
                                        fontFamily: "Lato",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 25,),
                              Container(
                                width: 64,
                                height: 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: Color(0xff3d77f0), width: 1.20, ),
                                ),

                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                      color: Color(0xff0153fe),
                                      fontSize: 14,
                                      fontFamily: "Lato",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),



                            ],
                          )


                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
          );

          }

      ),










    );
  }
}
