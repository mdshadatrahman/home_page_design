import 'package:flutter/material.dart';

class YourClassWidget extends StatelessWidget {
  const YourClassWidget({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 8, bottom: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Class',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                  ),
                  Text(
                    'Thursday',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClassTile(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
                color: Color(0xff3DBFE2),
                text: 'Exam',
              ),
              ClassTile(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
                color: Color(0xffFE8E2A),
                text: 'Info',
              ),
              ClassTile(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
                color: Color(0xffF4C663),
                text: 'Report',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ClassTile extends StatelessWidget {
  const ClassTile({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.color,
    required this.text,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.2,
      width: deviceWidth * .28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: deviceHeight * 0.1,
            child: Image.asset(
              'images/graduate-cap.png',
            ),
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
