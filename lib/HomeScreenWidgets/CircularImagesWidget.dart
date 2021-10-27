import 'package:flutter/material.dart';
import 'package:gaurily/Home.dart';
import '../models/HomeScreenModel.dart';

class CircularImagesWidget extends StatefulWidget {
  @override
  State<CircularImagesWidget> createState() => _CircularImagesWidgetState();
}

class _CircularImagesWidgetState extends State<CircularImagesWidget> {
  int currentIndex = 1;
  List<CircularImages> _circularImages = [
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/9800864/pexels-photo-9800864.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: "Lorem",
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/458766/pexels-photo-458766.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/3221176/pexels-photo-3221176.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/2328991/pexels-photo-2328991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/2808556/pexels-photo-2808556.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
    CircularImages(
      circularImages:
          "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
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
              _buildCircularImage(items: _circularImages[index]),
        ),
      ),
    );
  }

  Widget _buildCircularImage({
    CircularImages items,
  }) =>
      Column(
        children: [
          Container(
            width: 50.0,
            height: 45.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: ClipOval(
              child: Image.network(
                items.circularImages,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            items.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
}
