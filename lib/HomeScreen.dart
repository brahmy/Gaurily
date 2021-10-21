
import 'package:flutter/material.dart';

import '/HomeScreenWidgets/SecondSliderWidget.dart';
import '/HomeScreenWidgets/ThirdCardViewWidget.dart';
import '/HomeScreenWidgets/GridViewWidget.dart';
import './HomeScreenWidgets/CircularImagesWidget.dart';
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
    return Scaffold(
      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade400,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.category_sharp,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 40,
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset('assets/onlyLogo.png'),
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    child: Image.asset('assets/logoName.png'),
                    height: 40,
                    width: 70,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.headphones,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_outline_outlined,
                      size: 35,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                color: Colors.black,
              ),
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
      ),
    );
  }
}
