import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: 250.0,
                width: 400.0, // Set the height of the header container
                color: const Color.fromARGB(255, 80, 148, 173),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.0),
                  ],
                ),
              ),
              Positioned(
                top: 120.0, // Adjust the top position to move the picture down
                left: MediaQuery.of(context).size.width / 2 - 60.0,
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 0, 82, 142),
                      width: 2,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage(
                      'assets/doctor1.jpg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 432,
                width: 355,
                padding: const EdgeInsets.all(10.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
