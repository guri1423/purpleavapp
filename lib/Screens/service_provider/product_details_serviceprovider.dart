

import 'package:flutter/material.dart';
import 'package:purpleavapp/Modal/chose_rent_model.dart';


class ProductDetailsRenter extends StatefulWidget {
  // Product product;
  ProductDetailsRenter({Key? key,
    // required this.product
  }) : super(key: key);

  @override
  State<ProductDetailsRenter> createState() => _ProductDetailsRenterState();
}

class _ProductDetailsRenterState extends State<ProductDetailsRenter> {

  final List<bool> _selected = List.generate(RentOptionsModel.list.length, (i) => false);
  final List<bool> _selectedPackage = List.generate(RentPackageModel.list.length, (i) => false);
  final List<bool> _selectedDelivery = List.generate(RentDeliveryModel.list.length, (i) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Color(0xff5600d4),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:const [
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
                "widget.product.name!,",
                style: TextStyle(
                  color: Color(0xff2d2d2d),
                  fontSize: 22,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "widget.product.perDayPrice!",
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
                  boxShadow:const [
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
                "Brand: {widget.product.brand}\n"
                    "Model: {widget.product.model}",
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
                "widget.product.description!",
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
                "widget.product.termsConditions!",
                style: TextStyle(
                  color: Color(0xff6f6f6f),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Download Manual PDF",
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
                  children:const[
                    Text(
                      "Quantity:  1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w600,
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
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: RentOptionsModel.list.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index){
                    return Row(
                      children: [
                        Checkbox(
                            fillColor: MaterialStateProperty.resolveWith<Color>((
                                states) {
                              if (states.contains(MaterialState.disabled)) {
                                return Color(0xff5600d4);
                              }
                              return Color(0xff5600d4);
                            }),
                            value: _selected[index],
                            onChanged: (value) {
                              setState(() {
                                _selected[index] = !_selected[index];
                              });

                        }),
                        Text(RentOptionsModel.list[index].title,  style: TextStyle(
                      color: Color(0xff2d2d2d),
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w500,
                    ),)
                      ],
                    );
                    }),
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
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount:RentPackageModel.list.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index){
                      return Row(
                        children: [
                          Checkbox(
                              fillColor: MaterialStateProperty.resolveWith<Color>((
                                  states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Color(0xff5600d4);
                                }
                                return Color(0xff5600d4);
                              }),
                              value: _selectedPackage[index],
                              onChanged: (value) {
                                setState(() {
                                  _selectedPackage[index] = !_selectedPackage[index];
                                });

                              }),
                          Text(RentPackageModel.list[index].title,  style: TextStyle(
                            color: Color(0xff2d2d2d),
                            fontSize: 16,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      );
                    }),
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
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount:RentDeliveryModel.list.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index){
                      return Row(
                        children: [
                          Checkbox(
                              fillColor: MaterialStateProperty.resolveWith<Color>((
                                  states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Color(0xff5600d4);
                                }
                                return Color(0xff5600d4);
                              }),
                              value: _selectedDelivery[index],
                              onChanged: (value) {
                                setState(() {
                                  _selectedDelivery[index] = !_selectedDelivery[index];
                                });

                              }),
                          Text(RentDeliveryModel.list[index].title,  style: TextStyle(
                            color: Color(0xff2d2d2d),
                            fontSize: 16,
                            fontFamily: "Lato",
                            fontWeight: FontWeight.w500,
                          ),)
                        ],
                      );
                    }),
              ),
              SizedBox(height: 20,),
              // Container(
              //   alignment: Alignment.center,
              //   width: 363,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(4),
              //     color: Color(0xff5600d4),
              //   ),
              //   child: Text(
              //     "Add to Cart",
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 20,
              //       fontFamily: "Lato",
              //       fontWeight: FontWeight.w600,
              //     ),
              //   ),
              // )




            ],
          ),
        ),
      ),


    );
  }
}



