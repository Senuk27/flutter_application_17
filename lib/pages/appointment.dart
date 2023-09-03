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
      selectedTimeSlot = null;

      if (day.weekday == DateTime.saturday || day.weekday == DateTime.sunday) {
        _showWeekendDialog();
      }
    });
  }

  void _showWeekendDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Not Available"),
          content: const Text(
              "Selected day is a weekend and not available for appointments."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  void _handleOkayButton() {
    Navigator.pop(context); // Go back to the calendar
  }

  void _onTimeSlotSelected(int index) {
    setState(() {
      selectedTimeSlot = index;
    });
  }

  void _showSelectDateAndTimeSlotMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Missing Selection"),
          content: const Text(
              "Please select both a date and a time slot to make an appointment."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Okay"),
            ),
          ],
        );
      },
    );
  }

  void _showAppointmentConfirmationDialog() {
    if (selectedTimeSlot != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Appointment Successful"),
            content: const Text("You have successfully made an appointment."),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text("Okay"),
              ),
            ],
          );
        },
      );
    } else {
      _showSelectDateAndTimeSlotMessage();
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));

    return Scaffold(
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
      body: Column(
        children: [
          TableCalendar(
            locale: "en_US",
            rowHeight: 40,
            headerStyle: const HeaderStyle(
                formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime(2023, 8, 1),
            lastDay: DateTime(2023, 11, 30),
            onDaySelected: _onDaySelected,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              outsideTextStyle: TextStyle(
                color: Colors.grey[200],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green, // Green color extending to the footer
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
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
                  const SizedBox(height: 10),
                  const Text(
                    "Please select the time slot",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 100 / 40,
                    ),
                    shrinkWrap: true,
                    itemCount: timeSlots.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        onPressed: () {
                          _onTimeSlotSelected(index);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedTimeSlot == index
                              ? Colors.red
                              : Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        child: Text(
                          timeSlots[index],
                          style: const TextStyle(
                              fontSize: 11, color: Colors.black),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 320,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        // Check if both date and time slot are selected
                        if (selectedTimeSlot != null) {
                          _showAppointmentConfirmationDialog();
                        } else {
                          // Show a message indicating that both date and time slot must be selected.
                          _showSelectDateAndTimeSlotMessage();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                      child: const Text("Make Appointment",
                          style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
