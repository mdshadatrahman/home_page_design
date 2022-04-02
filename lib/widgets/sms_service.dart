import 'package:flutter/material.dart';

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
        SMSServiceText(),
        Container(
          height: deviceHeight * 0.20,
          width: deviceWidth * 0.9,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 102, 67, 227),
                Color(0xffCE28FC),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
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
                      color: Color(0xffCE28FC),
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

class SMSServiceText extends StatelessWidget {
  const SMSServiceText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 8, bottom: 8),
      child: Text(
        'SmS Service',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
