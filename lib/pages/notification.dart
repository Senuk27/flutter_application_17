import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/doctor_details.dart';
import 'package:flutter_application_17/pages/doctor_feedback1.dart';
import 'package:flutter_application_17/pages/medicine_description.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            top: 35.0,
            left: 20.0,
          ),
          child: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 25, 142, 182),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 27.0,
            left: 20.0,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification1.png',
                '3 Schedules!',
                'Check your schedule Today',
                () {},
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification2.png',
                'Medicine',
                'Check your Medicine details',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicineDescriptionPage()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification3.png',
                'Records Update',
                'Check your Medicine Records',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FeedbackPage1()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification4.png',
                'Feedbacks Update',
                'Check your feedback',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FeedbackPage1()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification5.png',
                'Doctor Update',
                'Add your doctor details',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DoctorDetailsPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationItem(
    String imagePath,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 90.0,
        child: Row(
          children: [
            const SizedBox(width: 15.0),
            Image.asset(
              imagePath,
              width: 55.0,
              height: 53.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 30.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RedHatDisplay',
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
