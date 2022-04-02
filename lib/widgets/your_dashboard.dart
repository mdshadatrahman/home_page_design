
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
      width: deviceWidth * 0.8,
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
              Text(
                'Your Dashboard',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: deviceHeight * 0.2,
                          width: deviceWidth * .3,
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius:
                                BorderRadius.circular(10),
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
                    ),
                    SizedBox(width: deviceWidth * .02),
                    Stack(
                      children: [
                        Container(
                          height: deviceHeight * 0.2,
                          width: deviceWidth * .3,
                          decoration: BoxDecoration(
                            color: Colors.red[200],
                            borderRadius:
                                BorderRadius.circular(10),
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
                    ),
                    SizedBox(width: deviceWidth * .02),
                    Stack(
                      children: [
                        Container(
                          height: deviceHeight * 0.2,
                          width: deviceWidth * .3,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(
                                255, 237, 132, 255),
                            borderRadius:
                                BorderRadius.circular(10),
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
                    ),
                    SizedBox(width: deviceWidth * .02),
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
