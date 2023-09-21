import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/doctor_feedback1.dart';
import 'package:flutter_application_17/pages/doctor_feedback2.dart';
import 'package:flutter_application_17/pages/doctor_feedback3.dart';
import 'package:flutter_application_17/pages/home_page.dart';
import 'doctor1.dart';
import 'doctor2.dart';
import 'doctor3.dart';

class FeedbackHome extends StatelessWidget {
  const FeedbackHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: SafeArea(
        child: Center(
          child: ListView(
            // Wrap the entire content in a ListView
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            // Handle back button press
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const HomePage(), // redirecting to a page when the onPressed function is clicked
                              ),
                            );
                          },
                        ),
                        const SizedBox(width: 50),
                        const Text(
                          'Feedbacks',
                          style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RedHatDisplay',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                        height: 60.0), // Add spacing above the new text
                    const Text(
                      'Great, You’re Almost There',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    const SizedBox(
                        height: 10.0), // Add spacing above the new text
                    const Text(
                      'if you want  to give feedback  select your doctor',
                      style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    const SizedBox(
                        height: 20.0), // Add spacing above containers
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 80, 148, 173),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(25)),
                          ),
                          height: 55.0,
                          child: GestureDetector(
                            onTap: () {
                              // Handle the tap on DR. T. WIJESINGHE
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FeedbackPage1()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/doctor3.png',
                                  width: 64.0,
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 20.0),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DR. T. WIJESINGHE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RedHatDisplay',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Medical Facility',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'RedHatDisplay',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 10.0), // Add spacing between containers
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 53, 121, 160),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(25)),
                          ),
                          height: 55.0,
                          child: GestureDetector(
                            onTap: () {
                              // Handle the tap on DR D.T.N. ARIYAPALA
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FeedbackPage2()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/doctor4.png',
                                  width: 64.0,
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 20.0),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DR D.T.N. ARIYAPALA',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RedHatDisplay',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Dental Facility',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'RedHatDisplay',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 10.0), // Add spacing between containers
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 56, 124, 133),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(25)),
                          ),
                          height: 55.0,
                          child: GestureDetector(
                            onTap: () {
                              // Handle the tap on DR MANJULA KURUPPU
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FeedbackPage3()),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/doctor5.png',
                                  width: 64.0,
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 20.0),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DR MANJULA KURUPPU',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RedHatDisplay',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Counseling Facility',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'RedHatDisplay',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
