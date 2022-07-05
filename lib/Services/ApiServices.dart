

import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:purpleavapp/Modal/SignIn_Modal.dart';
import 'package:purpleavapp/Modal/SignUp_Modal.dart';
import 'package:purpleavapp/Modal/renter_model/booking_model.dart';
import 'package:purpleavapp/Modal/renter_model/product_model.dart';

Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
  String url = "https://e6c7-2401-4900-51ff-f714-508b-8d2f-bae-fe0.in.ngrok.io/user/login";

  final response = await http.post(Uri.parse(url), body: requestModel.toJson());
  if (response.statusCode == 200 || response.statusCode == 400) {
    return LoginResponseModel.fromJson(
      json.decode(response.body),
    );
  } else {
    throw Exception('Failed to load data!');
  }
}

Future <SignUpResponseModel?> signup(SignUpRequestModel requestModel) async{
  print(requestModel.phoneNo);
  print(requestModel.email);
  print(requestModel.phoneNo);
  print(requestModel.phoneNo);

  String url = "https://purpleapp.omkatech.com/api/services";
  final response = await http.post(Uri.parse(url), body: requestModel.toJson());
  if(response.statusCode==200|| response.statusCode==400){
    print(response.body);
    return SignUpResponseModel.fromJson
      (json.decode(response.body),);
  } else {
    throw Exception('Failed to load data');
  }
}

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