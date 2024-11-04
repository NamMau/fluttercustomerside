import 'class_instance.dart';
import 'package:yoga_customer/models/customer.dart';

class Booking{
    int bookingID;
    int customerID;
    int classInstanceID;
    String email;


    Booking({
        required this.bookingID,
        required this.customerID,
        required this.classInstanceID,
        required this.email,
    });

    factory Booking.fromJson(Map<String, dynamic> json){
      return Booking(
        bookingID: json['bookingID'],
        customerID: json['customerID'],
        classInstanceID: json['classInstanceID'],
        email: json['email'],
      );
    }

    Map<String, dynamic> toJson(){
      return{
        'bookingID': bookingID,
        'customerID': customerID,
        'classInstanceID': classInstanceID,
        'email': email,
      };
    }
}