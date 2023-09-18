import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/details1.dart';
import 'package:flutter_application_17/pages/details2.dart';
import 'package:flutter_application_17/pages/details3.dart';

class DoctorDetailsPage extends StatelessWidget {
  const DoctorDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
        title: const Text(
          'Doctor Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Main Container 1
            Positioned(
              top: 10,
              child: Container(
                width: 320,
                height: 216,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 219, 245, 255), // First container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Row(
                  children: [
                    // Image on the Left
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 70, bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/doctor1.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Text and Elevated Button
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Professor &  Ex Head of \nDepartment at Orthopedics \nDepartment Colombo Medical\nCollege & Hospital',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          const SizedBox(height: 1), // Add spacing
                          // Wrap the ElevatedButton with ButtonStyle to adjust button size
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 90,
                            ), // Adjust left padding for button size
                            child: ElevatedButton(
                              onPressed: () {
                                //  action for button
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MoreDetailsPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 53, 121, 159),
                                //  minimumSize to control the button size
                                minimumSize: const Size(20, 25),
                              ),
                              child: const Text(
                                'More Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'RedHatDisplay',
                                  fontWeight: FontWeight.bold,
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
            // Nested Container 1
            Positioned(
              top: 10, // Adjust value to move it up
              child: Container(
                width: 320,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 53, 121, 159),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 10), // Add spacing
                    // Text Rows on the Right side
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Dr. T. Wijesinghe',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Medical Facility',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Main Container 2
            Positioned(
              top: 240, // Adjust value to move down
              child: Container(
                width: 320,
                height: 207,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 219, 245, 255), // Second container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Row(
                  children: [
                    // Image on the Left
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 65, bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/doctor11.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Text Elevated Button
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Professor &  Ex Head of \nDepartment at Dental surgery \nunit, Peradeniya Medical\nCollege & Hospital',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          const SizedBox(height: 2), // Add spacing
                          // Wrap the ElevatedButton with ButtonStyle to adjust button size
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 90), //  left padding for button
                            child: ElevatedButton(
                              onPressed: () {
                                // Add action for  button
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MoreDetailsPage2()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 53, 121, 159),
                                //  minimumSize to control the button size
                                minimumSize: const Size(60, 30),
                              ),
                              child: const Text(
                                'More Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'RedHatDisplay',
                                  fontWeight: FontWeight.bold,
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
            // Nested Container 2
            Positioned(
              top: 240, // Adjust value to move up
              child: Container(
                width: 320,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 53, 121, 159),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 10), // Add spacing
                    // Text Rows on the Right side
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Dr. D.T.N.Ariyapala',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Dental Facility',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Main Container 3
            Positioned(
              top: 460, // Adjust value to move down
              child: Container(
                width: 320,
                height: 206,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 219, 245, 255), // Third container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: Row(
                  children: [
                    // Image on the Left
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 60, bottom: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/doctor12.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Text  Elevated Button
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Professor &  Ex Head of \nDepartment at Psychology\nDepartment, Kandy Medical\nCollege & Hospital',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          const SizedBox(height: 2), // Add spacing
                          // Wrap the ElevatedButton with ButtonStyle to adjust button size
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 90), //  left padding for button
                            child: ElevatedButton(
                              onPressed: () {
                                // Add action for  button
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MoreDetailsPage3()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 53, 121, 159),
                                // Adjust the minimumSize to control the button size
                                minimumSize: const Size(60, 30),
                              ),
                              child: const Text(
                                'More Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'RedHatDisplay',
                                  fontWeight: FontWeight.bold,
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
            // Nested Container 3
            Positioned(
              top: 460, // Adjust this value to move it up
              child: Container(
                width: 320,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 53, 121, 159),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 10), // Add spacing
                    // Text Rows on the Right
                    Expanded(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Dr. Manjula Kuruppu',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Counseling Facility',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
