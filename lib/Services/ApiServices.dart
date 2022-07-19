

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:purpleavapp/Modal/SignIn_Modal.dart';
import 'package:purpleavapp/Modal/SignUp_Modal.dart';
import 'package:purpleavapp/Modal/forgotPassword_modal.dart';
import 'package:purpleavapp/Modal/post_product_model.dart';
import 'package:purpleavapp/Modal/renter_model/booking_model.dart';
import 'package:purpleavapp/Modal/renter_model/contact_modal.dart';
import 'package:purpleavapp/Modal/renter_model/product_model.dart';
import 'package:purpleavapp/Modal/review_modal.dart';



Future <ProductModel> getAllProduct() async{

  String url = "https://purpleapp.omkatech.com/api/products";
  final response = await http.get(Uri.parse(url), );
  if(response.statusCode==200|| response.statusCode==400){
    print(response.body);

    return ProductModel.fromJson
      (json.decode(response.body),);
  } else {
    throw Exception('Failed to load data');
  }
}

Future<ReviewModel> getAllReviews()async{
  String url = "https://purpleapp.omkatech.com/api/review";
  final response = await http.get(Uri.parse(url), );
  if(response.statusCode==200|| response.statusCode==400){
    print(response.body);

    return reviewModelFromJson(response.body);
  } else {
    throw Exception("Failed to load data");
  }


}


Future <BookingModel> getAllBooking() async{

  String url = "https://purpleapp.omkatech.com/api/bookings";
  final response = await http.get(Uri.parse(url), );
  if(response.statusCode==200|| response.statusCode==400){
    print(response.body);

    return BookingModel.fromJson
      (json.decode(response.body),);
  } else {
    throw Exception('Failed to load data');
  }
}

Future <bool?> contactDetails(Contact model) async{
   // debugPrint(model.toString());
  String url = "https://purpleapp.omkatech.com/api/contact";

  final response = await http.post(Uri.parse(url),body: model.toJson() );
  if(response.statusCode==200|| response.statusCode==400){
    var jsonResponse= json.decode(response.body);
    // debugPrint(jsonResponse["message"]);
    // print(response.body);

    if(jsonResponse["message"] == "Contact Added Succesfully"){
      return true;
    }else{
      return false;
    }
  } else {
    throw Exception('Failed to load data');
  }
}



Future<bool?> userRegister(Register model) async{
  print(model.name);
  print(model.email);
  print(model.password);

  String url = "https://purpleapp.omkatech.com/api/register";

  final response = await http.post(Uri.parse(url), body: model.toJson());
  if (response.statusCode==200|| response.statusCode==400){

    var jsonResponse = json.decode(response.body);
    print(jsonResponse["message"]);
    if (jsonResponse['message']=="User Registered Successfully |"){
      return true;
    }
    else{
      return false;
    }

    }

  else{
    throw Exception("Failed to load data");
  }

}


Future<bool?> userLogin(Login model) async{

  print(model.email);
  print(model.password);

  String url = "https://purpleapp.omkatech.com/api/login";

  final response = await http.post(Uri.parse(url), body: model.toJson());
  if (response.statusCode==200|| response.statusCode==400){
    print(response.body);
    var jsonResponse = json.decode(response.body);
    if (jsonResponse['message']=="Login Successfull"){
      return true;}
    else{
      return false;
    }

  }
  else{
    throw Exception("Failed to load data");
  }

}



Future<bool?> userForgotPass(ForgotPasswordService model) async{

  print(model.email);


  String url = "https://purpleapp.omkatech.com/api/forgot-password";

  final response = await http.post(Uri.parse(url), body: model.toJson());
  if (response.statusCode==200|| response.statusCode==400){
    print(response.body);
    var jsonResponse = json.decode(response.body);
    if (jsonResponse['status']=="true"){
      return true;}
    else{
      return false;
    }

  }
  else{
    throw Exception("Failed to load data");
  }

}



Future<bool?> newPassword( model) async{

  print(model.email);
  print(model.password);
  print(model.confirmpassword);

  String url = "https://purpleapp.omkatech.com/api/reset-password";

  final response = await http.post(Uri.parse(url), body: model.toJson());
  if (response.statusCode==200|| response.statusCode==400){
    print(response.body);
    var jsonResponse = json.decode(response.body);
    if (jsonResponse['status']=="true"){
      return true;}
    else{
      return false;
    }

  }
  else{
    throw Exception("Failed to load data");
  }

}


Future <bool?> postAllProducts(GetAllProductsModel model) async{
  // debugPrint(model.toString());
  String url = "https://purpleapp.omkatech.com/api/products";

  final response = await http.post(Uri.parse(url),body: model.toJson() );
  if(response.statusCode==200|| response.statusCode==400){
    var jsonResponse= json.decode(response.body);
    // debugPrint(jsonResponse["message"]);
    // print(response.body);

    if(jsonResponse["message"] == "Product Added Succesfully"){
      return true;
    }else{
      return false;
    }
  } else {
    throw Exception('Failed to load data');
  }
}



