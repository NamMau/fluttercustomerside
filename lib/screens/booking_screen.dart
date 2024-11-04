import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  final String courseName;

  BookingScreen({required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book $courseName'),
      ),
      body: Center(
        child: Text(
          'Booking for $courseName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
