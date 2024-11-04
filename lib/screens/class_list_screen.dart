import 'package:flutter/material.dart';
import '../models/course.dart'; // Import your Course model
import '../services/api_service.dart'; // Import your API service for fetching courses

class ClassListScreen extends StatefulWidget {
  @override
  _ClassListScreenState createState() => _ClassListScreenState();
}

class _ClassListScreenState extends State<ClassListScreen> {
  List<Course> _courses = []; // List to store fetched courses
  bool _isLoading = true; // Loading state

  @override
  void initState() {
    super.initState();
    _fetchCourses(); // Fetch courses when the screen is initialized
  }

  // Function to fetch courses from the API
  Future<void> _fetchCourses() async {
    try {
      final courses = await ApiService.fetchCourses(); // Replace with your API service method
      setState(() {
        _courses = courses;
        _isLoading = false; // Set loading state to false once data is fetched
      });
    } catch (error) {
      // Handle error appropriately (e.g., show a message)
      print('Error fetching courses: $error');
      setState(() {
        _isLoading = false; // Set loading state to false on error
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga Classes'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator()) // Show loading spinner while fetching data
          : ListView.builder(
        itemCount: _courses.length,
        itemBuilder: (context, index) {
          final course = _courses[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(course.name),
              subtitle: Text('${course.dayOfWeek} at ${course.time}'),
              trailing: Text('\$${course.price.toStringAsFixed(2)}'), // Display the price
              onTap: () {
                // Navigate to a detailed view or booking screen if needed
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetailScreen(course: course)));
              },
            ),
          );
        },
      ),
    );
  }
}
