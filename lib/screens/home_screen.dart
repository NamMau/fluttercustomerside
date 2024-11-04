import 'package:flutter/material.dart';
import 'package:yoga_customer/screens/signup_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              "images/background1.jpg", // Use your background image here
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // App Logo/Title
                    Center(
                      child: Text(
                        'UNIVERSAL YOGA',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Add some space between title and buttons
                    // Sign In / Sign Up Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Sign In"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // Set background color
                            foregroundColor: Colors.black, // Set text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Add rounded corners
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjust padding
                          ),
                        ),
                        const SizedBox(width: 10), // Add spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to SignupScreen
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignupScreen()),
                            );
                          },
                          child: Text("Sign Up"),
                          // ... remaining button style code
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Central Card or Image
                      Container(
                        width: 200,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/background2.jpg",
                              fit: BoxFit.cover,
                              height: 300,
                              width: double.infinity,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Emily Mitchell',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Experience the profound benefits of meditation',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Try for Free'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal, // Set a different background color
                          foregroundColor: Colors.white, // Set text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Add rounded corners
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Adjust padding
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}