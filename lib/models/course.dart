
import 'package:flutter/cupertino.dart';

class Course {
  int id;
  String name;
  String description;
  String dayOfWeek;
  String time;
  int capacity;
  int duration;
  double price;
  String typeCourse;

  Course({
    required this.id,
    required this.name,
    required this.description,
    required this.dayOfWeek,
    required this.time,
    required this.capacity,
    required this.duration,
    required this.price,
    required this.typeCourse,
  });

  factory Course.fromJson(Map<String, dynamic>json){
    return Course(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      dayOfWeek: json['dayOfWeek'],
      time: json['time'],
      capacity: json['capacity'],
      duration: json['duration'],
      price: (json['price'] as num).toDouble(),
      typeCourse: json['tyCourse'],
    );
  }
}