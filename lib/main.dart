import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'widgets/search_bar_widget.dart';
import 'widgets/sms_service.dart';
import 'widgets/todays_schedule.dart';
import 'widgets/top_bar_with_icons.dart';
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
                    Container(
                      height: deviceHeight * 0.25,
                      width: deviceWidth * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: deviceHeight * .01),
                          Text(
                            'My Attendence',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: deviceHeight * .01),
                          CircularPercentIndicator(
                            radius: 50.0,
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
                          )
                        ],
                      ),
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
