import 'package:flutter/material.dart';
import 'package:gaurily/screens/BottomAppBarScreens/HomeScreen.dart';
import 'package:gaurily/screens/auth/Login.dart';

class AboutScreen1 extends StatefulWidget {
  @override
  State<AboutScreen1> createState() => _AboutScreen1State();
}

class _AboutScreen1State extends State<AboutScreen1> {
  int index = 0;

  void _animateWidget() {
    if (index != 2) {
      setState(() {
        index += 1;
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
          Container(
            height: 250,
            child: Image.asset("assets/A1.png"),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Lorem Ipsum dolor sit amet',
            style: TextStyle(
                color: Color(0xFFFCD3B6),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor si amet, consetetur sadipscing elitr, sed',
              style: TextStyle(
                color: Color(0xFFFCD3B6),
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
          Container(
            height: 250,
            child: Image.asset("assets/A2.png"),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Lorem Ipsum dolor sit amet',
            style: TextStyle(
                color: Color(0xFF62D9B4),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor si amet, consetetur sadipscing elitr, sed',
              style: TextStyle(
                color: Color(0xFF62D9B4),
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
          Container(
            height: 250,
            child: Image.asset("assets/A3.png"),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Lorem Ipsum dolor sit amet',
            style: TextStyle(
                color: Color(0xFFFDDDB7),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem ipsum dolor si amet, consetetur sadipscing elitr, sed',
              style: TextStyle(
                color: Color(0xFFFDDDB7),
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

    final double circleRadius = 160.0;
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
                      height: mediaQuery.size.height * 0.136,
                      decoration: BoxDecoration(
                          color: index == 0
                              ? Colors.black
                              : index == 1
                                  ? Color(0xFF2D1812)
                                  : index == 2
                                      ? Color(0xFF292629)
                                      : null,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
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
                            'assets/logo.png',
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
                color: index == 0
                    ? Colors.black
                    : index == 1
                        ? Color(0xFF2D1812)
                        : index == 2
                            ? Color(0xFF292629)
                            : null,
                height: mediaQuery.size.height * 0.653,
                width: double.infinity,
                child: Column(
                  children: [
                    AnimatedSwitcher(
                      duration: Duration(milliseconds: 2000),
                      transitionBuilder: (child, animation) =>
                          RotationTransition(
                        child: child,
                        turns: animation,
                      ),
                      child: _animatedWidgets[index],
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.05,
                    ),
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
                                      color: Colors.white, fontSize: 18),
                                ),
                                SizedBox(height: 4),
                                Container(
                                  height: 3,
                                  width: 50,
                                  color: Colors.white,
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
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 3,
                                    width: 50,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: _animateWidget,
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
