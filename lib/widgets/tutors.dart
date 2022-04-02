import 'package:flutter/material.dart';

class Tutors extends StatelessWidget {
  const Tutors({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      height: deviceHeight * .40,
      width: deviceWidth * .9,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tutors',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: deviceHeight * .02),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Teacher(
                  name: 'Lestie C. Mayo',
                  subjects: 'Physics, Chemistry',
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
                SizedBox(width: deviceWidth * 0.05),
                Teacher(
                  name: 'Lestie C. Mayo',
                  subjects: 'Physics, Chemistry',
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
                SizedBox(width: deviceWidth * 0.05),
                Teacher(
                  name: 'Lestie C. Mayo',
                  subjects: 'Physics, Chemistry',
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
                SizedBox(width: deviceWidth * 0.05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Teacher extends StatelessWidget {
  const Teacher({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.name,
    required this.subjects,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final String name;
  final String subjects;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: deviceHeight * 0.3,
          width: deviceWidth * 0.35,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: 180,
          bottom: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            height: deviceHeight * 0.08,
            width: deviceWidth * 0.35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subjects,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 206, 205, 205),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
