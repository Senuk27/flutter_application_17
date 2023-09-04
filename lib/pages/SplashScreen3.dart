import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/SplashScreen2.dart';
import 'package:flutter_application_17/pages/SplashScreen4.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(249, 228, 236, 239),
      body: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.horizontal,
        onDismissed: (DismissDirection direction) {
          if (direction == DismissDirection.endToStart) {
            // Right swipe  navigate to the next page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashScreen4(),
              ),
            );
          } else if (direction == DismissDirection.startToEnd) {
            // Left swipe

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashScreen2(),
              ),
            );
          }
        },
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * 0.5,
                width: 360,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.asset(
                    'assets/splash_image2.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 45, bottom: 29.5, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 237, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    ),
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    const Text(
                      "Connect with Counselor",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        height: 40), // Add some spacing in between two text
                    const Text(
                      "Easily connect with Counselor in the medical \n center and take the necessary  mental health precautions and  necessary therapy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(230, 80, 81, 88),
                          fontSize: 14,
                          fontFamily: 'RedHatDisplay',
                          height: 1.5),
                    ),
                    const SizedBox(
                        height: 45), // Add spacing between text and circles
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 160, 236, 188),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 160, 236, 188),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 70, 183, 151),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 160, 236, 188),
                        ),
                      ],
                    ),
                    Align(
                      alignment:
                          Alignment.bottomRight, // to float right the content
                      child: Padding(
                        padding: const EdgeInsets.only(top: 32, right: 2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SplashScreen4(),
                              ),
                            );
                          },
                          child: const Text(
                            "Skip for Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 80, 81, 88),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
