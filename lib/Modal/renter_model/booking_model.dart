import 'dart:convert';

BookingModel bookingModelFromJson(String str) => BookingModel.fromJson(json.decode(str));



class BookingModel {
  BookingModel({
    required this.bookings,
  });

  List<Booking> bookings;

  factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
    bookings: List<Booking>.from(json["bookings"].map((x) => BookingModel.fromJson(x))),
  );


}

class Booking {
  Booking({
    this.id,
    this.renterId,
    this.serviceProviderId,
    this.equipmentName,
    this.packageTaken,
    this.quantity,
    this.deliveryType,
    this.expiryDate,
    this.purchaseDate,
    this.returnDate,

  });

  int? id;
  String? renterId;
  String? serviceProviderId;
  String? equipmentName;
  String? packageTaken;
  String? quantity;
  String? deliveryType;
  DateTime? expiryDate;
  DateTime? purchaseDate;
  DateTime? returnDate;
}