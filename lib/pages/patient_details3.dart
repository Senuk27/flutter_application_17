import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/appointment.dart';

import 'package:flutter_application_17/pages/home_page.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final TextEditingController _medicationController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();

  String selectedMedication = 'Yes';
  String selectedAllergies = 'Yes';
  String selectedVaccinated = 'Yes';
  bool isConfirmed = false;

  // Define a GlobalKey  to perform form-level validation.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // Associate the form with the GlobalKey
          child: Column(
            children: [
              // Progress Bar with Step 3/3 Text
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20), // Adjust the spacing
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Step 3 / 3',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 250, // Set the width to match the screen width
                      child: LinearProgressIndicator(
                        value: 1.0, // Fill the whole progress bar
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 61, 199, 188)),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "On Any Medication?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Yes',
                          groupValue: selectedMedication,
                          onChanged: (value) {
                            setState(() {
                              selectedMedication = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'Yes',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 16),
                        Radio<String>(
                          value: 'No',
                          groupValue: selectedMedication,
                          onChanged: (value) {
                            setState(() {
                              selectedMedication = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'No',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    if (selectedMedication == 'Yes')
                      TextFormField(
                        controller: _medicationController,
                        validator: (value) {
                          // validating medication
                          if (value == null || value.isEmpty) {
                            return "Please enter medication information";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText:
                              "If you are on medication, please fill this",
                          hintStyle: TextStyle(
                            fontFamily: 'RedHatDisplay',
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    const SizedBox(height: 8),
                    const Text(
                      "Allergies to Any Medication/Food?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Yes',
                          groupValue: selectedAllergies,
                          onChanged: (value) {
                            setState(() {
                              selectedAllergies = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'Yes',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 16),
                        Radio<String>(
                          value: 'No',
                          groupValue: selectedAllergies,
                          onChanged: (value) {
                            setState(() {
                              selectedAllergies = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'No',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    if (selectedAllergies == 'Yes')
                      TextFormField(
                        //validating allergies information
                        controller: _allergiesController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter allergies information";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText:
                              "If you have allergies to medication/food, please fill this",
                          hintStyle: TextStyle(
                            fontFamily: 'RedHatDisplay',
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    const SizedBox(height: 8),
                    const Text(
                      "Fully Vaccinated for COVID-19:",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Yes',
                          groupValue: selectedVaccinated,
                          onChanged: (value) {
                            setState(() {
                              selectedVaccinated = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'Yes',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 16),
                        Radio<String>(
                          value: 'No',
                          groupValue: selectedVaccinated,
                          onChanged: (value) {
                            setState(() {
                              selectedVaccinated = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          'No',
                          style: TextStyle(
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: isConfirmed,
                          onChanged: (value) {
                            setState(() {
                              isConfirmed = value!;
                            });
                          },
                          activeColor: const Color.fromARGB(255, 61, 199, 188),
                        ),
                        const Text(
                          ' I hereby confirm that the above information\n is correct',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      '    Note: No need to fill this form again and \n                please check the form carefully.',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 53, 121, 159),
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate the form before proceeding
                          if (_formKey.currentState!.validate()) {
                            // Redirect to the next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyApp()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 61, 199, 188),
                          minimumSize: const Size(double.infinity, 40),
                        ),
                        child: const Text('Submit'),
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
