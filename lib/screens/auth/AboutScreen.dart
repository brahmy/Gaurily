import 'package:flutter/material.dart';
import 'package:gaurily/HomeScreen.dart';
import 'package:gaurily/screens/auth/Login.dart';

class AboutScreen1 extends StatefulWidget {
  @override
  State<AboutScreen1> createState() => _AboutScreen1State();
}

class _AboutScreen1State extends State<AboutScreen1> {
  int index = 0;

  void _animteWidget() {
    if (index != 2) {
      index += 1;
      setState(() {
        index;
      });
      print(index);
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    }
  }

  List _animatedWidgets = [
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lorem Ipsum dolor sit amet',
            style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor si amet, consetetur sadipscing elitr, sed',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lorem Ipsum dolor sit amet',
            style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor si amet, consetetur sadipscing elitr, sed',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
            ),
          ),

        ],
      ),
    ),
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lorem Ipsum dolor sit amet',
            style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor si amet, consetetur sadipscing elitr, sed',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
            ),
          ),

        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final double circleRadius = 180.0;
    final double circleBorderWidth = 10.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.06,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 2.0),
                    child: Container(
                      //replace this Container with your Card
                      height: mediaQuery.size.height * 0.135,
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
                          /* height: 170,
                          width: 170,
                          color: Colors.white,*/
                          child: Image.asset(
                            'assets/clogo.png',
                            // width: 200.0,
                            // height: 200.0,
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
                height: mediaQuery.size.height * 0.65,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: mediaQuery.size.height * 0.35,),
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 2000),
                      transitionBuilder: (child, animation) =>
                          RotationTransition(
                        child: child,
                        turns: animation,
                      ),
                      child: _animatedWidgets[index],
                    ),
                    SizedBox(height: mediaQuery.size.height * 0.1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  'Skip',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                SizedBox(height: 4),
                                Container(
                                  height: 3,
                                  width: 50,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                        ),
                        SizedBox(width: 100),
                        GestureDetector(
                          child: Container(
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 3,
                                    width: 50,
                                    color: Colors.black,
                                  )
                                ],
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
