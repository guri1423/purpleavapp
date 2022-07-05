


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Modal/renter_model/product_model.dart';

class ProductDetails extends StatefulWidget {
  Product product;
  ProductDetails({Key? key,
    required this.product
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Color(0xff5600d4),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Product details",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset('images/pic1.png'),
                width: 370,
                height: 199,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xfff4f4f4),
                ),
              ),
              SizedBox(height: 10,),
             SizedBox(
               width:MediaQuery.of(context).size.width,
               height: 75,
               child: ListView.builder(
                 itemCount: 5,
                 scrollDirection: Axis.horizontal,
                 shrinkWrap: true,
                 itemBuilder: (context,index)=> Padding(
                   padding: const EdgeInsets.only(right: 8),
                   child: Container(
                     child: Image.asset("images/pic2.png"),
                   width: 75,
                   height: 75,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(4),
                     color: Color(0xfff4f4f4),
                   ),
               ),
                 ),),
             ),
              SizedBox(height: 10),
              Text(
                widget.product.name!,
                style: TextStyle(
                  color: Color(0xff2d2d2d),
                  fontSize: 22,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                widget.product.perDayPrice!,
                style: TextStyle(
                  color: Color(0xff5600d4),
                  fontSize: 22,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 364,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children:[
                    Positioned(
                      left: 38,
                      top: 22,
                      child: Text(
                        "Renter Review",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 38,
                      top: 70,
                      child: Container(
                        width: 157.42,
                        height: 22.42,
                        child: Stack(
                          children:[],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 217,
                      top: 26,
                      child: Text(
                        "(31 Reviews)",
                        style: TextStyle(
                          color: Color(0xff6f6f6f),
                          fontSize: 16,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 217,
                      top: 75,
                      child: Text(
                        "4 out of 5",
                        style: TextStyle(
                          color: Color(0xff2d2d2d),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Brand: Shure\nModel: Sv100",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Description:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                widget.product.description!,
                style: TextStyle(
                  color: Color(0xff6f6f6f),
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Term & Condition:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and type\nsetting industry. Lorem Ipsum has been the industry's stan\ndummy text ever since the 1500s, when an unknown printer\ntook a galley of type and scrambled it to make a type\nspecimen book.",
                style: TextStyle(
                  color: Color(0xff6f6f6f),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Download Manul PDF",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                width: 365,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                  color: Color(0xff5600d4),
                ),
              ),
              SizedBox(height: 10,),
              Container(

                height: 28,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Text(
                      "Qyantity: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 32),
                    Container(
                      width: 100,
                      height: 28,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Container(
                            width: 34,
                            height: 28,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffcacaca), width: 1, ),
                              color: Color(0xffeaeaea),
                            ),
                            child: Icon(Icons.remove),

                          ),

                          SizedBox(width: 10.50),
                          Text(
                            "1",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff2d2d2d),
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 10.50),
                          Container(
                            width: 34,
                            height: 28,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffcacaca), width: 1, ),
                              color: Color(0xffeaeaea),
                            ),
                            child: Icon(Icons.add),


                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Choose Rent Options",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                width: 365,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                  color: Color(0xfff0f0f0),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Three day Rental Price",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Weekend Special",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "One day Price",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Two day Rental Price",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Three day Rental Price",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Weekly Rental Price",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Packages",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Package 1",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Package 2",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 5",
                      style: TextStyle(
                        color: Color(0xff5600d4),
                        fontSize: 18,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Delivery or Pickup: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Pick up",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 351,
                height: 22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Checkbox(
                        fillColor: MaterialStateProperty.resolveWith<Color>((
                            states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Color(0xff5600d4);
                          }
                          return Color(0xff5600d4);
                        }),
                        value: _ischecked, onChanged: (value) {
                      _ischecked = !_ischecked;
                      setState(() {

                      });
                    }),
                    SizedBox(width: 40),
                    Text(
                      "Shipping",
                      style: TextStyle(
                        color: Color(0xff2d2d2d),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    alignment: Alignment.center,
                    width: 363,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xff5600d4),
                    ),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )




            ],
          ),
        ),
      ),


    );
  }
}
