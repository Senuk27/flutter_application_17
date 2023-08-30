import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime today = DateTime.now();
  int? selectedTimeSlot;
  List<String> timeSlots = [
    "9:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
    "1:00 PM",
    "2:00 PM",
    "3:00 PM",
    "4:00 PM",
    "5:00 PM",
    "6:00 PM",
    "7:00 PM",
    "8:00 PM",
    "9:00 PM",
    "10:00 PM",
    "11:00 PM",
    "12:00 AM",
  ];

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      selectedTimeSlot =
          null; // Clear the selected time slot when day is changed
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press here
          },
        ),
        title: null,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TableCalendar(
                locale: "en_US",
                rowHeight: 40, // Adjust the row height
                headerStyle: const HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime(2023, 8, 1),
                lastDay: DateTime(2024, 1, 31),
                onDaySelected: _onDaySelected,
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle "Morning" button press here
                    },
                    child: const Text("Morning"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle "Evening" button press here
                    },
                    child: const Text("Evening"),
                  ),
                ],
              ),

              const SizedBox(height: 10), // Add some spacing

              const Text(
                "Please select the time slot", // New text here
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 100 / 40, // Adjusted aspect ratio
                ),
                shrinkWrap: true,
                itemCount: timeSlots.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      _onTimeSlotSelected(
                          index); // Handle time slot button press here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedTimeSlot == index
                          ? Colors.red
                          : const Color.fromARGB(255, 248, 247,
                              247), // Change color to red if selected
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                          color: Colors.white, // Add white border stroke
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Text(
                      timeSlots[index],
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.black), // Adjust font size here
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 320, // Set the desired width
                height: 56, // Set the desired height
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Make Appointment" button press here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the button color to white
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(14.0), // Set the corner radius
                    ),
                  ),
                  child: const Text("Make Appointment",
                      style: TextStyle(
                          color: Colors.blue)), // Set text color to blue
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTimeSlotSelected(int index) {
    setState(() {
      selectedTimeSlot = index; // Update selected time slot index
    });
  }
}
