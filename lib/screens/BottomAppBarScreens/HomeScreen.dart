import 'package:flutter/material.dart';
import 'package:gaurily/HomeScreenWidgets/CircularImagesWidget.dart';

import '/HomeScreenWidgets/SecondSliderWidget.dart';
import '/HomeScreenWidgets/ThirdCardViewWidget.dart';
import '/HomeScreenWidgets/GridViewWidget.dart';
import '/HomeScreenWidgets/SecondCardViewWidget.dart';
import '/HomeScreenWidgets/FirstCardViewWidget.dart';
import '/HomeScreenWidgets/FirstSliderWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    Widget title = Text(
      'Lorem Ipsum Dolor Sit Amet'.toUpperCase(),
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
    );

    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Circular Images
              CircularImagesWidget(),

              /// First Slider
              FirstSliderWidget(),
              SizedBox(
                height: 10,
              ),
              title,
              SizedBox(
                height: 10,
              ),
              /// Second Card View
              SecondCardViewWidget(),
              SizedBox(
                height: 20,
              ),
             title,
              SizedBox(
                height: 10,
              ),

              /// First Card View
              FirstCardViewWidget(),
              SizedBox(
                height: 20,
              ),
              title,
              SizedBox(
                height: 10,
              ),
              /// Second Card View
              SecondCardViewWidget(),
              SizedBox(
                height: 10,
              ),
              title,
              /// GridView
              GridViewWidget(),

              /// Second Slider
              title,
              SizedBox(
                height: 10,
              ),
              SecondSliderWidget(),
              SizedBox(
                height: 10,
              ),

              /// ThirdCardView
              ThirdCardViewWidget(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
