import 'package:flutter/material.dart';

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.radio_button_unchecked,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.notifications,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * .04),
                    Container(
                      height: deviceHeight * 0.06,
                      width: deviceWidth * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText:
                                      'Search for Classes, Tutors, Notice',
                                  hintStyle: TextStyle(fontSize: 12),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: deviceHeight * .08),
                    YourDashboardWidget(
                        deviceHeight: deviceHeight, deviceWidth: deviceWidth),
                    SizedBox(height: deviceHeight * .02),
                    SMSService(
                        deviceHeight: deviceHeight, deviceWidth: deviceWidth)
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

class SMSService extends StatelessWidget {
  const SMSService({
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
          padding: EdgeInsets.only(left: 30, bottom: 5),
          child: Text(
            'SmS Service',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: deviceHeight * 0.20,
          width: deviceWidth * 0.8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey,
            //     offset: Offset(0.0, 1.0), //(x,y)
            //     blurRadius: 6.0,
            //   ),
            // ],
          ),
          child: Column(
            children: [
              SizedBox(height: deviceHeight * .01),
              Text(
                'Any information you \nneed to inform',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: deviceHeight * .01),
              Text(
                'You have unlimited sms service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: deviceHeight * .01),
              Container(
                width: deviceWidth * 0.6,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Send SMS',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
