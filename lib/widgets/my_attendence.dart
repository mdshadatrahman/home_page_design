import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyAttendence extends StatelessWidget {
  const MyAttendence({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.28,
      width: deviceWidth * 0.9,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 8, top: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(height: deviceHeight * .01),
                    Text(
                      'My Attendance',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: deviceHeight * .02),
                    CircularPercentIndicator(
                      radius: 55.0,
                      lineWidth: 5.0,
                      percent: .78,
                      center: new Text(
                        "78%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      progressColor: Color(0xff7AC6FA),
                      backgroundColor: Color.fromARGB(255, 3, 119, 214),
                    ),
                    SizedBox(height: deviceHeight * .02),
                  ],
                ),
                Container(
                  height: deviceHeight * 0.13,
                  width: deviceWidth * 0.4,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: [
                tinyTile(
                  deviceWidth: deviceWidth,
                  title: '90',
                  subtitle: 'Working day',
                  color: Color(0xffF3AE56),
                ),
                tinyTile(
                  deviceWidth: deviceWidth,
                  title: '90',
                  subtitle: 'Off days',
                  color: Color(0xffA092FB),
                ),
                tinyTile(
                  deviceWidth: deviceWidth,
                  title: '54',
                  subtitle: 'Days',
                  color: Color(0xff74E0F6),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class tinyTile extends StatelessWidget {
  const tinyTile({
    Key? key,
    required this.deviceWidth,
    required this.color,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  final double deviceWidth;
  final Color color;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 6,
              backgroundColor: color,
            ),
            SizedBox(width: deviceWidth * .01),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 6,
              backgroundColor: Color.fromARGB(0, 179, 115, 69),
            ),
            SizedBox(width: deviceWidth * .01),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
