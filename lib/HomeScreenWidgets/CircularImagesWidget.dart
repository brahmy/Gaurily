
import 'package:flutter/material.dart';
import '../models/HomeScreenModel.dart';

class CircularImagesWidget extends StatelessWidget {

  List<CircularImages> _circularImages = [
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/9800864/pexels-photo-9800864.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/2328991/pexels-photo-2328991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/2808556/pexels-photo-2808556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    CircularImages(
      circulaImages:
      "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: _circularImages.length,
          separatorBuilder: (context, _) => SizedBox(
            width: 10,
          ),
          itemBuilder: (context, index) =>
              _buildCircularImage(images: _circularImages[index]),
        ),
      ),
    );
  }

  Widget _buildCircularImage({
    CircularImages images,
  }) =>
      Container(
        width: 50.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        child: ClipOval(
          child: Image.network(
            images.circulaImages,
            fit: BoxFit.cover,
          ),
        ),
      );

}
