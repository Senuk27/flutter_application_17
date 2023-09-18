import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/patient_details3.dart';

class AdditionalInfoPage extends StatefulWidget {
  const AdditionalInfoPage({Key? key}) : super(key: key);

  @override
  _AdditionalInfoPageState createState() => _AdditionalInfoPageState();
}

class _AdditionalInfoPageState extends State<AdditionalInfoPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _studentNumberController =
      TextEditingController();
  final TextEditingController _batchNumberController = TextEditingController();
  final TextEditingController _facultyController = TextEditingController();
  final TextEditingController _diseaseController = TextEditingController();

  String selectedLongTermDisease = 'Yes';

  // Define a GlobalKey for  perform form-level validation.
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
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(17.0),
        child: Form(
          key: _formKey, // Associate the form with the GlobalKey
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Bar
              const Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 0, 0, 20), // Adjust the spacing as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Step 2 / 3',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: 'RedHatDisplay',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 260, // Set the width to match the screen width
                      child: LinearProgressIndicator(
                        value: 0.66, // Fill two-thirds of the progress bar
                        valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromARGB(255, 61, 199, 188)),
                        backgroundColor: Color.fromARGB(255, 246, 239, 239),
                      ),
                    ),
                  ],
                ),
              ),

              const Text(
                " Email",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an email address";
                  }

                  return null; // Return null if the input is valid
                },
                decoration: const InputDecoration(
                  hintText: "Enter email address",
                  hintStyle: TextStyle(
                    fontFamily: 'RedHatDisplay',
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),

              const Text(
                " Student Number",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _studentNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a student number";
                  }

                  return null; // Return null if the input is valid
                },
                decoration: const InputDecoration(
                  hintText: "Enter student number",
                  hintStyle: TextStyle(
                    fontFamily: 'RedHatDisplay',
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),

              const Text(
                " Batch Number",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _batchNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a batch number";
                  }

                  return null; // Return null if the input is valid
                },
                decoration: const InputDecoration(
                  hintText: "Enter batch number",
                  hintStyle: TextStyle(
                    fontFamily: 'RedHatDisplay',
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),

              const Text(
                " Faculty",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _facultyController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter the faculty";
                  }

                  return null; // Return null if the input is valid
                },
                decoration: const InputDecoration(
                  hintText: "Enter faculty",
                  hintStyle: TextStyle(
                    fontFamily: 'RedHatDisplay',
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 14),

              const Text(
                " Any Long-term Disease",
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
                    groupValue: selectedLongTermDisease,
                    onChanged: (value) {
                      setState(() {
                        selectedLongTermDisease = value!;
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
                    groupValue: selectedLongTermDisease,
                    onChanged: (value) {
                      setState(() {
                        selectedLongTermDisease = value!;
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
              const SizedBox(height: 1),
              if (selectedLongTermDisease == 'Yes')
                TextFormField(
                  controller: _diseaseController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the long-term disease";
                    }

                    return null; // Return null if the input is valid
                  },
                  decoration: const InputDecoration(
                    hintText:
                        "EX.(Asthma/fits/diabetes/High Blood Pressure/Heart Diseases/Blood Disorders/ Psychiatric Diseases)",
                    hintStyle: TextStyle(
                      fontFamily: 'RedHatDisplay',
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              const SizedBox(height: 3),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Validate the form before proceeding
                    if (_formKey.currentState!.validate()) {
                      // Redirect to next page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoPage()),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 61, 199, 188),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
