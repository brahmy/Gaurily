import 'package:flutter/material.dart';
import 'package:gaurily/HomeScreen.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final double circleRadius = 180.0;

  final double circleBorderWidth = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 2.0),
                    child: Container(
                      //replace this Container with your Card
                      height: 90.0,
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
                          height: 180,
                          width: 180,
                          color: Colors.white,
                          child: Image.asset(
                            'assets/onlyLogo.png',
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
                height: 700,
                width: double.infinity,
                color: Colors.grey.shade100,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 250,
                      child: Image.asset('assets/logoName.png'),
                    ),
                    SizedBox(height: 80),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 35),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'First Name',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade600)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 35),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Last Name',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade600)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 35),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Gender',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade600)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 35),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade700, width: 2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  labelText: 'Email',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade600)),
                            ),
                          ),
                          SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 20),
                                ),
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    primary: Colors.grey.shade700),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
