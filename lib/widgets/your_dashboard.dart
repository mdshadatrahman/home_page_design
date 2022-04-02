import 'package:flutter/material.dart';

class YourDashboardWidget extends StatelessWidget {
  const YourDashboardWidget({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.3,
      width: deviceWidth * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Container(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              YourDashBoardText(),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              StudentCountTile(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudentCountTile extends StatelessWidget {
  const StudentCountTile({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StudentCountTileSingle(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            tileColor: 0xffD1E7FF,
          ),
          SizedBox(width: deviceWidth * .02),
          StudentCountTileSingle(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            tileColor: 0xffF9887A,
          ),
          SizedBox(width: deviceWidth * .02),
          StudentCountTileSingle(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            tileColor: 0xffBC95FF,
          ),
          SizedBox(width: deviceWidth * .02),
        ],
      ),
    );
  }
}

class StudentCountTileSingle extends StatelessWidget {
  const StudentCountTileSingle({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.tileColor,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  final int tileColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: deviceHeight * 0.2,
          width: deviceWidth * .3,
          decoration: BoxDecoration(
            color: Color(tileColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          top: 20,
          left: 4.5,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              Text(
                '500',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Total Students',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class YourDashBoardText extends StatelessWidget {
  const YourDashBoardText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        'Your Dashboard',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
