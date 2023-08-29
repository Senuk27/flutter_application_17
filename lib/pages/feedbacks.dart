import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Customize the height of the AppBar
        toolbarHeight: 191.0,
        // Customize the background color of the AppBar
        backgroundColor: const Color.fromARGB(255, 80, 148, 173),
        title: const Align(
          alignment: Alignment.center, // Adjust this alignment as needed
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 64.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add spacing between the circle and text
                Text(
                  'Feedback',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 1.0), // Adjust spacing as needed
            Padding(
              padding: const EdgeInsets.only(top: 0.0), // Adjust top padding
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/doctor1.jpg', // Replace with your image path
                      width: 160.0, // Customize the image width
                      height: 150.0, // Customize the image height
                      fit: BoxFit.fitHeight, // Ensure the image is circular
                    ),
                  ),
                  const SizedBox(
                      height:
                          10.0), // Add spacing between the image and other content
                  const Text(
                    ' Body content ',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
