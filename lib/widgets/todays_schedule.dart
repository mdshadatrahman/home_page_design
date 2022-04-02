import 'package:flutter/material.dart';

class TodaysSchedule extends StatelessWidget {
  const TodaysSchedule({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, bottom: 8),
                child: Text(
                  'Today\'s Schedule',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScheduleTile(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
                ScheduleTile(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
                ScheduleTile(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScheduleTile extends StatelessWidget {
  const ScheduleTile({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.2,
      width: deviceWidth * .28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: deviceHeight * 0.05,
            child: Image.asset(
              'images/flask.png',
            ),
          ),
          Text(
            'Class-8',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Text(
            'Chemistry',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.schedule,
                size: 18,
              ),
              SizedBox(width: deviceWidth * 0.01),
              Text(
                '15 Mar, 2021',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
