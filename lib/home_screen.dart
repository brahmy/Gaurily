import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade400,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    border: Border.all(color: Colors.grey.shade700, width: 2),
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    border: Border.all(color: Colors.grey.shade700, width: 2),
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    border: Border.all(color: Colors.grey.shade700, width: 2),
                    borderRadius: BorderRadius.circular(7)),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    border: Border.all(color: Colors.grey.shade700, width: 2),
                    borderRadius: BorderRadius.circular(7)),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset('assets/onlyLogo.png'),
                          ),
                          Container(
                            width: 100,
                            child: Image.asset('assets/logoName.png'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(120),
                      //       border: Border.all(color: Colors.black, width: 2)),
                      // )
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.black,
                            width: 3.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.grey[100],
                height: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 10,
                          width: 180,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 5,
                          width: 200,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 5,
                          width: 120,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: 120,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 5,
                          width: 120,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
