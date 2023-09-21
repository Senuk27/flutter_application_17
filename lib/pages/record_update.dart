import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Records update',
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
                  'DR MANJULA KURUPPU\nReason : Flu\nAllegis and reaction : No \nAppointment time: 2.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR D T N Ariyapala\nReason : Headache\nAllegis and reaction : Yes  \nAppointment time: 1.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR T Wijesinghe\nReason : stomach ache\nAllegis and reaction : Yes\nAppointment time: 3.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR MANJULA KURUPPU\nReason : Flu\nAllegis and reaction : Yes\nAppointment time: 2.30pm',
            ),
            SizedBox(height: 14.0),
            CustomRectangle(
              content:
                  'DR T Wijesinghe\nReason : Headache\nAllegis and reaction : Yes\nAppointment time: 10.30am',
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
