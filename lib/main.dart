import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'widgets/my_attendence.dart';
import 'widgets/notice_board.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/sms_service.dart';
import 'widgets/todays_schedule.dart';
import 'widgets/top_bar_with_icons.dart';
import 'widgets/tutors.dart';
import 'widgets/your_class_widget.dart';
import 'widgets/your_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: deviceHeight * 0.3,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TopBarWithIcons(),
                    SizedBox(height: deviceHeight * .04),
                    SearchBarWidget(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),
                    SizedBox(height: deviceHeight * .08),
                    YourDashboardWidget(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),
                    SizedBox(height: deviceHeight * .02),
                    SMSService(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),
                    SizedBox(height: deviceHeight * .02),
                    YourClassWidget(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),
                    SizedBox(height: deviceHeight * .02),
                    //Today's Schedule Start
                    TodaysSchedule(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),

                    SizedBox(height: deviceHeight * .02),
                    //My Attendence
                    MyAttendence(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),
                    SizedBox(height: deviceHeight * .02),

                    //Notice Board
                    NoticeBoard(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),

                    SizedBox(height: deviceHeight * .02),
                    //Tutors
                    Tutors(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),

                    SizedBox(height: deviceHeight * .02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
