import 'package:flutter/cupertino.dart';

class Customer {
  final int customerID; // Unique identifier for the customer
  final String name; // Name of the customer
  final String email; // Email of the customer
  final String password;

  Customer({
    required this.customerID,
    required this.name,
    required this.email,
    required this.password,
  });

  // Factory constructor to create a Customer instance from a JSON object
  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      customerID: json['customerID'], // Make sure this key matches your JSON structure
      name: json['name'],
      email: json['email'],
      password: json['password']
    );
  }

  // Method to convert a Customer instance back to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'customerID': customerID,
      'name': name,
      'email': email,
      'password': password
    };
  }
}
