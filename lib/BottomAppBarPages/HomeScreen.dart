
import 'package:flutter/material.dart';

import '/HomeScreenWidgets/SecondSliderWidget.dart';
import '/HomeScreenWidgets/ThirdCardViewWidget.dart';
import '/HomeScreenWidgets/GridViewWidget.dart';
import '../HomeScreenWidgets/CircularImagesWidget.dart';
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
    return Container(

        child: SingleChildScrollView(
          child: Column(
            children: [

              /// Circular Images
              CircularImagesWidget(),
              /// First Slider
              FirstSliderWidget(),
              SizedBox(
                height: 10,
              ),
              /// First Card View
             FirstCardViewWidget(),
              SizedBox(
                height: 20,
              ),
              /// Second Card View
              SecondCardViewWidget(),
              /// GridView
              GridViewWidget(),
              /// Second Slider
              SecondSliderWidget(),
              SizedBox(
                height: 10,
              ),
              /// ThirdCardView
              ThirdCardViewWidget(),
              SizedBox(height: 50,),
            ],
          ),
        ),

    );
  }
}
