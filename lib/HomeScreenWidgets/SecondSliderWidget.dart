
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '/models/HomeScreenModel.dart';

class SecondSliderWidget extends StatefulWidget {

  @override
  State<SecondSliderWidget> createState() => _SecondSliderWidgetState();
}

class _SecondSliderWidgetState extends State<SecondSliderWidget> {
  int activeIndex = 0;

  List<SecondSlider> _secondSlider = [
    SecondSlider(
      image:
      "https://images.unsplash.com/photo-1634141406667-1a7d17e73576?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMTZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    SecondSlider(
      image:
      "https://images.unsplash.com/photo-1634233258581-de3737d4ebeb?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mzd8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    SecondSlider(
      image:
      "https://images.unsplash.com/photo-1634225684388-9878ff534aa2?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NTR8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    ),
    SecondSlider(
        image:
        "https://images.unsplash.com/photo-1634155323530-385a795dd103?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1NzR8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    SecondSlider(
        image:
        "https://images.unsplash.com/photo-1634149134165-6d679d80a800?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MDZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
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
            itemCount: _secondSlider.length,
            itemBuilder: (context, index, realIndex) {
              final _urlImage = _secondSlider[index];
              return secondSlider(urlImage: _urlImage, index: index);
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        _secondSliderIndicator(),
      ],
    );
  }

  Widget secondSlider({
    SecondSlider urlImage,
    int index,
  }) =>
      Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            urlImage.image,
            fit: BoxFit.fill,
          ),
        ),
      );

  Widget _secondSliderIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: _secondSlider.length,
    effect: SlideEffect(
      dotHeight: 7,
      dotWidth: 7,
    ),
  );

}
