import 'package:flutter/material.dart';
import 'package:gaurily/home_screen.dart';
import 'package:gaurily/screens/auth/Login.dart';

class AboutScreen1 extends StatefulWidget {
  @override
  State<AboutScreen1> createState() => _AboutScreen1State();
}

class _AboutScreen1State extends State<AboutScreen1> {
  final double circleRadius = 200.0;

  final double circleBorderWidth = 10.0;

  int index = 0;

  void _animteWidget() {
    if (index != 2) {
      index += 1;
      setState(() {
        index;
      });
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    }
  }

  List _animatedWidgets = [
    Container(
      child: Column(
        children: [
          Text(
            'Welcome! Here is the App',
            style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Enjoy it!',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '!',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade700,
            ),
            width: 250,
            height: 30,
          ),
          SizedBox(height: 20),
          Container(
            height: 5,
            width: 200,
            color: Colors.grey.shade700,
          ),
          SizedBox(height: 10),
          Container(
            height: 5,
            width: 150,
            color: Colors.grey.shade700,
          ),
          SizedBox(height: 100),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade700,
            ),
            width: 350,
            height: 30,
          ),
          SizedBox(height: 20),
          Container(
            height: 5,
            width: 300,
            color: Colors.grey.shade700,
          ),
          SizedBox(height: 10),
          Container(
            height: 5,
            width: 250,
            color: Colors.grey.shade700,
          ),
          SizedBox(height: 100),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 2.0),
                    child: Container(
                      //replace this Container with your Card
                      height: 100.0,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                  ),
                  Container(
                    width: circleRadius,
                    height: circleRadius,
                    decoration: ShapeDecoration(
                        shape: CircleBorder(), color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(circleBorderWidth),
                      child: ClipOval(
                        child: Container(
                          height: 200,
                          width: 200,
                          color: Colors.white,
                          child: Image.asset(
                            'assets/clogo.png',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey[100],
                height: 700,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 200),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 2000),
                      transitionBuilder: (child, animation) =>
                          RotationTransition(
                        child: child,
                        turns: animation,
                      ),
                      child: _animatedWidgets[index],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade800),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade700,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                          onTap: _animteWidget,
                        ),
                      ],
                    )
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
