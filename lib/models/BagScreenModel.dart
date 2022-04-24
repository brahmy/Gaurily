import 'dart:ui';

class BagScreenModel {
  final String title;
  final String image;
  final double offerPrice;
  final double price;
  final double discountPrice;
  final String deliverDate;
  final String size;
  final Color color;

  BagScreenModel({
    this.title,
    this.image,
    this.offerPrice,
    this.price,
    this.deliverDate,
    this.discountPrice,
    this.size,
    this.color
  });
}
