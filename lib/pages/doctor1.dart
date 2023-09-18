import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/patients_details1.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AppBar(
              backgroundColor: const Color.fromARGB(255, 80, 148, 173),
              automaticallyImplyLeading: false,
              flexibleSpace: Column(
                children: [
                  const SizedBox(
                    height: 48.0, // Add space at the top
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 15.0), // Adjust the left padding as needed
                        child: Container(
                          width: 40.0, // Set the desired width
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle, // Use a rectangle shape
                            borderRadius: BorderRadius.circular(
                                12.0), // Set the desired corner radius
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Details about DR. T. wijesinghe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              child: Container(
                width: 328.0,
                height: 109.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(28.0),
                  border: Border.all(
                    color: const Color.fromARGB(255, 53, 121, 160),
                    width: 2.0,
                  ),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: SizedBox(
                              width: 80.0, // Set the desired width
                              height: 80.0, // Set the desired height
                              child: Image.asset(
                                'assets/doctor1.jpg',
                                fit: BoxFit
                                    .cover, // You can adjust the fit as needed
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 13.0,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'DR.T.WIJESINGHE',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'General physician at Colombo hospital',
                                style: TextStyle(
                                  fontSize: 12.0,
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
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 235, 237),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Patients',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '100+',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 235, 237),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Exp.',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RedHatDisplay'),
                      ),
                      Text(
                        '10 yr',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 235, 237),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rating',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        '4.67',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 23.0,
            ),
            Container(
              width: 325.0, // Define the width
              height: 300.0, // Define the height
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(
                      255, 80, 148, 173), // Blue border color
                  width: 2.0, // Border width
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Padding(
                padding: EdgeInsets.all(20.0), // Add padding
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "RedHatDisplay"),
                      ),
                      SizedBox(
                        height: 10.0, // Add space
                      ),
                      Text(
                        'MBBS.Ph.D. , Surgeon',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "RedHatDisplay",
                        ),
                      ),
                      SizedBox(
                        height: 10.0, // Add space
                      ),
                      Text(
                        'Professor & Ex Head of Department at Orthopedics Department, Colombo Medical College & Hospital',
                        style: TextStyle(
                            fontSize: 14.0, fontFamily: "RedHatDisplay"),
                      ),
                      SizedBox(
                        height: 10.0, // Add space
                      ),
                      Text(
                        'A general physician, also known as a general practitioner (GP) or primary care physician, is a medical doctor who provides comprehensive and primary healthcare to patients of all ages. tact for individuals seeking medical care.',
                        style: TextStyle(
                            fontSize: 14.0, fontFamily: "RedHatDisplay"),
                      ),
                      SizedBox(
                        height: 10.0, // Add space
                      ),
                      Text(
                        'Availability  9AM - 5PM',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "RedHatDisplay",
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal:
                          28.0), // Set width to infinity to expand to the full width
                  child: ElevatedButton(
                    onPressed: () {
                      //  navigate to patient details form screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 80, 148, 173), // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Rounded corners
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 14.0),
                      child: Text(
                        'Book Doctor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
