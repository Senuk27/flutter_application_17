import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
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

  String selectedDay = '1';
  String selectedMonth = 'January';
  String selectedYear = '2023';
  String selectedGender = 'Female'; // Default value for gender

  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _parentMobileController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Patient Details',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Patient's Name",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter patient's name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Date of Birth",
                style: TextStyle(fontSize: 18, color: Colors.black),
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
                  SizedBox(width: 8),
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
                  SizedBox(width: 8),
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
              SizedBox(height: 16),
              Text(
                "Gender",
                style: TextStyle(fontSize: 18, color: Colors.black),
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
                  ),
                  Text('Female'),
                  SizedBox(width: 16),
                  Radio<String>(
                    value: 'Male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                  Text('Male'),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Mobile Number",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _mobileController,
                decoration: InputDecoration(
                  hintText: "Enter mobile number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Mobile Number of Parent",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _parentMobileController,
                decoration: InputDecoration(
                  hintText: "Enter parent's mobile number",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Personal Address",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: "Enter personal address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Do something with the collected data.
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green), // Set button color to green
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
