import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Schedules',
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            CustomRectangle(
              content:
                  'DR MANJULA KURUPPU\nCounseling Facility\nAppointment Date: 2023/June/12\nAppointment time: 2.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR D T N Ariyapala\nDental Facility\nAppointment Date: 2023/June/13\nAppointment time: 2.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR T Wijesinghe\nMedical Facility\nAppointment Date: 2023/June/14\nAppointment time: 2.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR MANJULA KURUPPU\nCounseling Facility\nAppointment Date: 2023/June/16\nAppointment time: 2.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR T Wijesinghe\nMedical Facility\nAppointment Date: 2023/June/26\nAppointment time: 2.30pm',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRectangle extends StatelessWidget {
  final String? content;

  const CustomRectangle({
    Key? key,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sentences = content?.split('\n');
    final firstSentence = sentences?.elementAt(0);
    final remainingText = sentences?.skip(1).join('\n');

    return Container(
      width: 380.0,
      height: 110.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: firstSentence ?? '',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 25, 142,
                                182), // Set the text color to blue
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\n${remainingText ?? ''}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: 'RedHatDisplay',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.only(top: 0.0),
                  onPressed: () {
                    // Add  options menu functionality here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
