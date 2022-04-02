import 'package:flutter/material.dart';

class NoticeBoard extends StatelessWidget {
  const NoticeBoard({
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
      height: deviceHeight * .35,
      width: deviceWidth * .9,
      // color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notice Board',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: deviceHeight * .02),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NoticeBoardTiles(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: 'Notes',
                ),
                NoticeBoardTiles(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: 'Anouncement',
                ),
                NoticeBoardTiles(
                  deviceHeight: deviceHeight,
                  deviceWidth: deviceWidth,
                  title: 'Attendance',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NoticeBoardTiles extends StatelessWidget {
  const NoticeBoardTiles({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.title,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: deviceHeight * 0.12,
          width: deviceWidth * .25,
          color: Colors.grey,
        ),
        SizedBox(height: deviceHeight * .02),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: deviceHeight * .02),
        Container(
          width: deviceWidth * .25,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('See all'),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey,
              shape: RoundedRectangleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
