import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:purpleavapp/Screens/SignIn.dart';
import 'package:purpleavapp/Widgets/custom_drawer.dart';
import 'package:purpleavapp/main.dart';
import 'package:purpleavapp/Screens/SignUp.dart';

import '../Widgets/image_widgets.dart';


class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {

  bool form=false;
  File? _image1;
  File? _image2;
  File? _image3;
  File? _image4;
  File? _image5;
  bool price=false;
  bool package=false;
  bool delivery=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff5600d4),
        title: Row(
          children: [
            Text('Add Products',
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total Products",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "128",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 31,
                                height: 31,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(Icons.arrow_forward_ios,
                                color: Colors.white,)
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Product In",
                            style: TextStyle(
                              color: Color(0xccffffff),
                              fontSize: 16,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    width: 160,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff5600d4),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Stock In Hand",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "500",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontFamily: "Lato",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 31,
                                height: 31,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                  child: Icon(Icons.arrow_forward_ios,
                                    color: Colors.white,)
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Product Out",
                            style: TextStyle(
                              color: Color(0xccffffff),
                              fontSize: 16,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),

                    width: 160,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff5600d4),
                    ),
                  ),


                ],
              ),

              form ?   addProduct(context) :   GestureDetector(
                onTap: (){
                  setState(() {
                    form=true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Container(
                    width: 363,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xff5600d4), width: 1.50, ),
                    ),

                    child: Center(
                      child: Text(
                        "Add Product",
                        style: TextStyle(
                          color: Color(0xff5600d4),
                          fontSize: 20,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget addProduct(BuildContext context){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text(
          "Upload Equipment Images ",
          style: TextStyle(
            color: Color(0xff0a0a0a),
            fontSize: 18,
            fontFamily: "Lato",
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10,),
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
                                        color: Color(0xff5600d4),
                                      ),
                                      child: Center(
                                        child: GestureDetector(onTap: (){
                                          getImage(ImageSource.gallery).then((value) {
                                            setState(() {
                                              if(_image1 == null){
                                                setState(() {
                                                  _image1= File(value!.path);
                                                });
                                              }else if(_image2 == null){
                                                setState(() {
                                                  _image2= File(value!.path);
                                                });
                                              }else if(_image3 == null){
                                                setState(() {
                                                  _image3= File(value!.path);
                                                });
                                              }else if(_image4 == null){
                                                setState(() {
                                                  _image4= File(value!.path);
                                                });
                                              }


                                            });
                                          });
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
                                        color: Color(0xff5600d4),
                                      ),
                                      child: Center(
                                        child: GestureDetector(onTap: (){
                                         getImage1().then((value) {
                                           setState(() {
                                             if(_image1 == null){
                                               setState(() {
                                                 _image1= File(value!.path);
                                               });
                                             }else if(_image2 == null){
                                               setState(() {
                                                 _image2= File(value!.path);
                                               });
                                             }else if(_image3 == null){
                                               setState(() {
                                                 _image3= File(value!.path);
                                               });
                                             }else if(_image4 == null){
                                               setState(() {
                                                 _image4= File(value!.path);
                                               });
                                             }


                                           });
                                         });
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
              });

        },
          child: Container(
            width: 365,
            height: 203,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/upload.png'),
                Text(
                  "Upload up to 5 image",
                  style: TextStyle(
                    color: Color(0xffa3a3a3),
                    fontSize: 18,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "(345×255 or larger recommended, up to )",
                  style: TextStyle(
                    color: Color(0xffa3a3a3),
                    fontSize: 14,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
              color: Color(0xfff6f6f6),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 84,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: ListView.builder(
              itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                List<File?>name=[
                  _image1,
                  _image2,
                  _image3,
                  _image4,
                  _image5,
                ];
              return  Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.025),
              child: name[index]!= null
                  ? Container(


                width: 82,
                height: 84,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                      image: FileImage(name[index]!)
                  ),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                  color: Color(0xfff6f6f6),
                ),
              )
                  :   Container(
                width: 82,
                height: 84,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                  color: Color(0xfff6f6f6),
                ),
              ),);
            }),
          ),
        ),


        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap:(){
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff5600d4),
              ),
              height: 50,
              alignment: Alignment.center,
              width:MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Center(
                      child: Text('Upload Manual (pdf only)', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                    Spacer(),

                    Image.asset('images/pdf.png')
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Equipment Details",
            style: TextStyle(
              color: Color(0xff0a0a0a),
              fontSize: 18,
              fontFamily: "Lato",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: 365,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
            color: Colors.white,
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Equipment Name *',
                hintStyle: TextStyle(
        color: Color(0xffb9b9b9),
        fontSize: 16,
        fontFamily: "Lato",
        fontWeight: FontWeight.w500,
      ),
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

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Model',
                hintStyle: TextStyle(
                  color: Color(0xffb9b9b9),
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                ),
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

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Brand',
                hintStyle: TextStyle(
                  color: Color(0xffb9b9b9),
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        GestureDetector(
          onTap: (){
            setState(() {
              if(price){
                price=false;
              }else{
                price=true;
              }
            });
          },
          child: Container(
            width: 365,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
              color: Colors.white,
            ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price *",
                  style: TextStyle(
                          color: Color(0xffb9b9b9),
                          fontSize: 16,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w500,
                  ),),

                  price?Icon(Icons.keyboard_arrow_up):Icon(Icons.keyboard_arrow_down)
                ],
              ),
            )
            // TextField(
            //   decoration: InputDecoration(
            //     border: InputBorder.none,
            //     hintText: 'Price',
            //     hintStyle: TextStyle(
            //       color: Color(0xffb9b9b9),
            //       fontSize: 16,
            //       fontFamily: "Lato",
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
          ),
        ),
        price?CustomDropDown( title:const[
         "Weekend Special",
         "One day Price",
         "Two day Rental Price",
         "Three day Rental Price",
         "Weekly Rental Price",
       ],expand: true,hint: "price",):Container(),

        SizedBox(height: 5,),
        GestureDetector(
          onTap: (){
            setState(() {
              if(package){
                package=false;
              }else{
                package=true;
              }
            });
          },
          child: Container(
              width: 365,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                color: Colors.white,
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Package",
                      style: TextStyle(
                        color: Color(0xffb9b9b9),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),),

                    package?Icon(Icons.keyboard_arrow_up):Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            // TextField(
            //   decoration: InputDecoration(
            //     border: InputBorder.none,
            //     hintText: 'Price',
            //     hintStyle: TextStyle(
            //       color: Color(0xffb9b9b9),
            //       fontSize: 16,
            //       fontFamily: "Lato",
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
          ),
        ),

        package?CustomDropDown( title:const[
          "Package 1",
          "Package 2",

        ],expand: true,hint: "package",):Container(),
        SizedBox(height: 5,),

        Container(
          width: 365,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
            color: Colors.white,
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Inventory *',
                hintStyle: TextStyle(
                  color: Color(0xffb9b9b9),
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),


        SizedBox(height: 5,),
        GestureDetector(
          onTap: (){
            setState(() {
              if(delivery){
                delivery=false;
              }else{
                delivery=true;
              }
            });
          },
          child: Container(
              width: 365,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
                color: Colors.white,
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery & Pickup *",
                      style: TextStyle(
                        color: Color(0xffb9b9b9),
                        fontSize: 16,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),),

                    delivery?Icon(Icons.keyboard_arrow_up):Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              )
            // TextField(
            //   decoration: InputDecoration(
            //     border: InputBorder.none,
            //     hintText: 'Price',
            //     hintStyle: TextStyle(
            //       color: Color(0xffb9b9b9),
            //       fontSize: 16,
            //       fontFamily: "Lato",
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
          ),
        ),

        /// here I have imported my custom dropdown
        /// just change list content name
        delivery?CustomDropDown2():Container(),
        SizedBox(height: 5,),
        Container(
          width: 365,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
            color: Colors.white,
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'More Information',
                hintStyle: TextStyle(
                  color: Color(0xffb9b9b9),
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          width: 365,
          height: 159,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Color(0xffdbdbdb), width: 1.50, ),
            color: Colors.white,
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Term & Conditions',
                hintStyle: TextStyle(
                  color: Color(0xffb9b9b9),
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),

        SizedBox(height: 40),
        GestureDetector(
          onTap: (){
            setState(() {
              form=false;
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xff5600d4),
                borderRadius: BorderRadius.circular(20)

            ),
              child: Center(
                child: Text(
                  "Add Product",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )

          ),
        ),

      ],
    );
  }


}



