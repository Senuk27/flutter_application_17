import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/patient_details2.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final TextEditingController patientNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController parentController = TextEditingController();
  final TextEditingController adressController = TextEditingController();

  void sendDataToFirebase() {
    String personName = patientNameController.text;
    String mobile = mobileController.text;
    String parent = parentController.text;
    String adress = adressController.text;

    FirebaseFirestore.instance.collection('patient_details').add({
      'PatientName': personName,
      'Mobile': mobile,
      'Parent': parent,
      'Address': adress,
    }).catchError((error) {
      // Error occurred while sending data
      print('Error sending data to Firestore: $error');
    });
  }

  final TextEditingController _nameController = TextEditingController();
  final List<String> days =
      List.generate(31, (index) => (index + 1).toString());
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  final List<String> years =
      List.generate(100, (index) => (2023 - index).toString());

  // defualt values
  String selectedDay = '1';
  String selectedMonth = 'January';
  String selectedYear = '2023';
  String selectedGender = 'Female'; // Default value for gender

  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _parentMobileController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  // Define a GlobalKey to perform form-level validation.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Color.fromARGB(255, 103, 114, 148)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Patient Details',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'RedHatDisplay',
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Associate the form with the GlobalKey
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Step 1 / 3',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 264, // Set the width to match the screen width
                      child: LinearProgressIndicator(
                        value:
                            0.33, // Set the progress value for the first step
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 61, 199, 188)),
                        backgroundColor: Color.fromARGB(255, 246, 239, 239),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Patient's Name",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      // validating the form
                      controller: patientNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter the patient's name,";
                        }
                        return null; // Return null if the input is valid
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter patient's name",
                        hintStyle: TextStyle(fontFamily: 'RedHatDisplay'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Date of Birth",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        DropdownButton<String>(
                          value: selectedDay,
                          onChanged: (value) {
                            setState(() {
                              selectedDay = value!;
                            });
                          },
                          items: days.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                        const SizedBox(width: 20),
                        DropdownButton<String>(
                          value: selectedMonth,
                          onChanged: (value) {
                            setState(() {
                              selectedMonth = value!;
                            });
                          },
                          items: months.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                        const SizedBox(width: 20),
                        DropdownButton<String>(
                          value: selectedYear,
                          onChanged: (value) {
                            setState(() {
                              selectedYear = value!;
                            });
                          },
                          items: years.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Female',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'Female',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 16),
                        Radio<String>(
                          value: 'Male',
                          groupValue: selectedGender,
                          onChanged: (value) {
                            setState(() {
                              selectedGender = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'Male',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Mobile Number",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller: mobileController, //validating mobile number
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter a mobile number";
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter mobile number",
                        hintStyle: TextStyle(
                          fontFamily: 'RedHatDisplay',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Mobile Number of Parent",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    TextFormField(
                      controller:
                          parentController, //validating parent's mobile number
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter the parent's mobile number";
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter parent's mobile number",
                        hintStyle: TextStyle(
                          fontFamily: 'RedHatDisplay',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Personal Address",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      controller: adressController, //validating address
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter the personal address";
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter personal address",
                        hintStyle: TextStyle(
                          fontFamily: 'RedHatDisplay',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Validate the form before proceeding
                        if (_formKey.currentState!.validate()) {
                          // Redirect to the next page when clicked
                          sendDataToFirebase();

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AdditionalInfoPage(),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 61, 199, 188),
                        minimumSize: const Size(double.infinity, 40),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
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
