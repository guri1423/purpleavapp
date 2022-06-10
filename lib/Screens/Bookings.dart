import 'package:flutter/material.dart';
import 'package:purpleavapp/Screens/SignIn.dart';
import 'package:purpleavapp/main.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  int index=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
        backgroundColor: Color(0xff9C037F),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Text(
                "Bookings",
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

      body:

      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 436,
              height: 63,
              color: Colors.white,

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   GestureDetector(
                     onTap: (){
                       setState(() {
                         index=0;
                       });
                     },
                     child: Column(
                       children: [
                         Container(
                             height: 40,
                             width: MediaQuery.of(context).size.width*.5-1,
                             color: Colors.white,
                             child: Center(child: Text("Booking Received",style: TextStyle(
                               fontSize: 20, fontFamily: 'Lato',
                                 fontWeight: FontWeight.w700,
                                 color: index==0?Color(0xff9c037f):Color(0xff727171)
                             ),))),
                         Container(
                             height: 5,
                             width: MediaQuery.of(context).size.width*.5-1,
                             color:  index==0?Color(0xff9c037f):Color(0xff727171)

                         )
                       ],
                     ),
                   ),

                   Container(height: 40,width: 2,color: Colors.grey,),

                   GestureDetector(
                     onTap: (){
                       setState(() {
                         index=1;
                       });
                     },
                     child: Column(
                       children: [
                         Container(
                             height: 40,
                             width: MediaQuery.of(context).size.width*.5-1,
                             color: Colors.white,
                             child: Center(child: Text("Booking Closed",style: TextStyle(
                                 fontSize: 20, fontFamily: 'Lato',
                               fontWeight: FontWeight.w700,
                                 color: index==1?Color(0xff9c037f):Color(0xff727171)
                             ),))),
                         Container(
                             height: 5,
                             width: MediaQuery.of(context).size.width*.5-1,
                             color: index==1?Color(0xff9c037f):Color(0xff727171)

                         )
                       ],
                     ),
                   )
                 ],
               )
            ),

            Container(
              width: 389,
              height: 740,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 389,
                    height: 170,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 389,
                          height: 170,
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
                          child: Stack(
                            children:[
                              Positioned(
                                left: 26,
                                top: 125,
                                child: Container(
                                  width: 337,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(color: Color(0xff9c037f), width: 1.20, ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                top: 131,
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: Color(0xff9c037f),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 287,
                                top: 18,
                                child: Container(
                                  width: 75.71,
                                  height: 71.50,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      Container(
                                        width: 75.71,
                                        height: 71.50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Color(0xfff4f4f4),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              width: 75.71,
                                              height: 71.50,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children:[
                                                  Container(
                                                    width: 75.71,
                                                    height: 71.50,
                                                    child: Image.asset('images/electricGuitar.png'),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7),
                                                      color: Color(0xfff4f4f4),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 25,
                                child: Text(
                                  "Jhon smith",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 49,
                                child: Text(
                                  "Electric classical Guitar ",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 83,
                                child: Text(
                                  "Payment Completed ",
                                  style: TextStyle(
                                    color: Color(0xff0a0a0a),
                                    fontSize: 18,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 389,
                    height: 170,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 389,
                          height: 170,
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
                          child: Stack(
                            children:[
                              Positioned(
                                left: 26,
                                top: 125,
                                child: Container(
                                  width: 337,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(color: Color(0xff9c037f), width: 1.20, ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                top: 131,
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: Color(0xff9c037f),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 287,
                                top: 18,
                                child: Container(
                                  width: 75.71,
                                  height: 71.50,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      Container(
                                        width: 75.71,
                                        height: 71.50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Color(0xfff4f4f4),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              width: 75.71,
                                              height: 71.50,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children:[
                                                  Container(
                                                    width: 75.71,
                                                    height: 71.50,
                                                    child: Image.asset('images/electricGuitar.png'),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7),
                                                      color: Color(0xfff4f4f4),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 25,
                                child: Text(
                                  "Jhon smith",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 49,
                                child: Text(
                                  "Electric classical Guitar ",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 83,
                                child: Text(
                                  "Payment Completed ",
                                  style: TextStyle(
                                    color: Color(0xff0a0a0a),
                                    fontSize: 18,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 389,
                    height: 170,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 389,
                          height: 170,
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
                          child: Stack(
                            children:[
                              Positioned(
                                left: 26,
                                top: 125,
                                child: Container(
                                  width: 337,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(color: Color(0xff9c037f), width: 1.20, ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                top: 131,
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: Color(0xff9c037f),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 287,
                                top: 18,
                                child: Container(
                                  width: 75.71,
                                  height: 71.50,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      Container(
                                        width: 75.71,
                                        height: 71.50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Color(0xfff4f4f4),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              width: 75.71,
                                              height: 71.50,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children:[
                                                  Container(
                                                    width: 75.71,
                                                    height: 71.50,
                                                    child: Image.asset('images/electricGuitar.png'),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7),
                                                      color: Color(0xfff4f4f4),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 25,
                                child: Text(
                                  "Jhon smith",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 49,
                                child: Text(
                                  "Electric classical Guitar ",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 83,
                                child: Text(
                                  "Payment Completed ",
                                  style: TextStyle(
                                    color: Color(0xff0a0a0a),
                                    fontSize: 18,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 389,
                    height: 170,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 389,
                          height: 170,
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
                          child: Stack(
                            children:[
                              Positioned(
                                left: 26,
                                top: 125,
                                child: Container(
                                  width: 337,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(color: Color(0xff9c037f), width: 1.20, ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 150,
                                top: 131,
                                child: Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: Color(0xff9c037f),
                                    fontSize: 16,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 287,
                                top: 18,
                                child: Container(
                                  width: 75.71,
                                  height: 71.50,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      Container(
                                        width: 75.71,
                                        height: 71.50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Color(0xfff4f4f4),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                              width: 75.71,
                                              height: 71.50,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children:[
                                                  Container(
                                                    width: 75.71,
                                                    height: 71.50,
                                                    child: Image.asset('images/electricGuitar.png'),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(7),
                                                      color: Color(0xfff4f4f4),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 25,
                                child: Text(
                                  "Jhon smith",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 49,
                                child: Text(
                                  "Electric classical Guitar ",
                                  style: TextStyle(
                                    color: Color(0xff727171),
                                    fontSize: 15,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 26,
                                top: 83,
                                child: Text(
                                  "Payment Completed ",
                                  style: TextStyle(
                                    color: Color(0xff0a0a0a),
                                    fontSize: 18,
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
