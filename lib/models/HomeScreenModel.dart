import 'package:flutter/material.dart';

class CircularImages {
  final String circulaImages;

  CircularImages({
    @required this.circulaImages,
  });
}

class FirstSlider {
  final String sliderImages;

  FirstSlider({
    @required this.sliderImages,
  });
}

class CardSliders {
  final String cardImage;
  final String title;
  final String subTitle;

  CardSliders({
    @required this.cardImage,
    @required this.title,
    @required this.subTitle,
  });
}

class SmallCardSlider {
  final String image;
  final String title;

  SmallCardSlider({
    this.image,
    this.title,
  });
}

class FourCard {
  final String image;

  FourCard({this.image});
}

class SecondSlider {
  final String image;

  SecondSlider({this.image});
}

class VerySmallCardSlider {
  final String image;
  final String title;

  VerySmallCardSlider({
    this.image,
    this.title,
  });
}
