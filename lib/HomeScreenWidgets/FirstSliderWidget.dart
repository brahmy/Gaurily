
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/HomeScreenModel.dart';

class FirstSliderWidget extends StatefulWidget {

  @override
  State<FirstSliderWidget> createState() => _FirstSliderWidgetState();
}

class _FirstSliderWidgetState extends State<FirstSliderWidget> {

  var activeIndex = 0;

  List<FirstSlider> _sliderImages = [
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/2808556/pexels-photo-2808556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/2131600/pexels-photo-2131600.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/2328991/pexels-photo-2328991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/3385375/pexels-photo-3385375.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/5673960/pexels-photo-5673960.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    FirstSlider(
      sliderImages:
      "https://images.pexels.com/photos/177332/pexels-photo-177332.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            itemCount: _sliderImages.length,
            itemBuilder: (context, index, realIndex) {
              final _urlImage = _sliderImages[index];
              return firstSlider(urlImage: _urlImage, index: index);
            },
          ),
        ),
        SizedBox(height: 10),
        _firstSliderIndicator(),
      ],
    );
  }

  Widget firstSlider({
    FirstSlider urlImage,
    int index,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          urlImage.sliderImages,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
  Widget _firstSliderIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: _sliderImages.length,
    effect: SlideEffect(
      dotHeight: 7,
      dotWidth: 7,
    ),
  );

}
