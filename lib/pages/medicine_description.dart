import 'package:flutter/material.dart';

class MedicineDescriptionPage extends StatelessWidget {
  const MedicineDescriptionPage({super.key});

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
          'Medicine Description',
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
              top: 20,
              child: Container(
                width: 320,
                height: 187,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 237, 234, 234), // First container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70), // Add spacing between text widgets
                    Text(
                      'Piriton                       1 pills 100g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ' Allermine                 1 pills 200g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Domperidon           1 pills 100g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Domperidon           1 pills 150g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Nested Container 1
            Positioned(
              top: 20, // Adjust this value to move it up
              child: Container(
                width: 320,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 6, 94, 143),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: Row(
                  children: [
                    // Rounded Photo 1
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10), // Adjust the right padding
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(40), // Rounded photo
                        child: Image.asset(
                          'assets/doctor1.jpg', // Replace with your image path
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Add spacing
                    // Text Rows on the Right
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. T. Wijesinghe',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          Text(
                            'Medical Facility',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          Text(
                            '12.30 PM March,20th,2023',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Main Container 2
            Positioned(
              top: 230, // Adjust this value to move it down
              child: Container(
                width: 320,
                height: 187,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 237, 234, 234), // Second container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70), // Add spacing between text widgets
                    Text(
                      ' Lidocaine               2 pills 400g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Articaine                 2 pills 100g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      ' Lidocaine               2 pills 200g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Articaine                 2 pills 150g',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Nested Container 2
            Positioned(
              top: 230, // Adjust this value to move it up
              child: Container(
                width: 320,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 6, 94, 143),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: Row(
                  children: [
                    // Rounded Photo 2
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10), // Adjust the right padding
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(50), // Rounded photo
                        child: Image.asset(
                          'assets/doctor11.jpg', // Replace with your image path
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Add spacing
                    // Text Rows on the Right
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. D.T.N.Ariyapala',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          Text(
                            'Dental Facility',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          Text(
                            '12.30 PM March,20th,2023',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Main Container 3
            Positioned(
              top: 440, // Adjust this value to move it down
              child: Container(
                width: 320,
                height: 187,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      255, 237, 234, 234), // Third container color
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70), // Add spacing between text widgets
                    Text(
                      'Fluoxetine                2 pills 400g',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay'),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Lorazepam              2 pills 400g',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay'),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Fluoxetine                2 pills 400g ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay'),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Lorazepam              2 pills 400g',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RedHatDisplay'),
                    ),
                  ],
                ),
              ),
            ),
            // Nested Container 3
            Positioned(
              top: 440, // Adjust this value to move it up
              child: Container(
                width: 320,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 6, 94, 143),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                  ),
                ),
                child: Row(
                  children: [
                    // Rounded Photo 3
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10), // Adjust the right padding
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(50), // Rounded photo
                        child: Image.asset(
                          'assets/doctor12.jpg', // Replace with your image path
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Add spacing
                    // Text Rows on the Right
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Manjula Kuruppu',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          Text(
                            'Counseling Facility',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontFamily: 'RedHatDisplay',
                            ),
                          ),
                          Text(
                            '12.30 PM March,20th,2023',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                            ),
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
    );
  }
}
