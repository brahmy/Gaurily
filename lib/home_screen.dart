import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final _urlImages = [
    "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2808556/pexels-photo-2808556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2131600/pexels-photo-2131600.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/2328991/pexels-photo-2328991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/3385375/pexels-photo-3385375.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/5673960/pexels-photo-5673960.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/177332/pexels-photo-177332.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];

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
                    Icons.search_sharp,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                color: Colors.black,
                //Custom AppBar
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
                            IconButton(
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.more_vert_sharp,
                                color: Colors.white,
                              ),
                              onPressed: () {},
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
              // Circular Images
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/9800864/pexels-photo-9800864.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/2673365/pexels-photo-2673365.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/1308582/pexels-photo-1308582.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                            "https://images.pexels.com/photos/2058070/pexels-photo-2058070.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            fit: BoxFit.cover,
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
                        child: ClipOval(
                          child: Image.network(
                              "https://images.pexels.com/photos/1454168/pexels-photo-1454168.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) => setState(() {
                      activeIndex = index;
                    }),
                  ),
                  itemCount: _urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final _urlImage = _urlImages[index];
                    return buildImage(_urlImage, index);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _buildIndicator(),
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

  @override
  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          _urlImages[index],
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  @override
  Widget _buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: _urlImages.length,
      );
}
