
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewWidget extends StatelessWidget {

  List<String> gridView = [
    "https://images.unsplash.com/photo-1634494726438-904f78b8bcc1?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634461359394-3fbfda1259fa?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634141455740-1f168af94ea6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMzV8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1634141405777-1db04b151366?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMDN8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: gridView.length,
          itemBuilder: (context, index) => Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                gridView[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
          staggeredTileBuilder: (index) =>
              StaggeredTile.count(2, 1.7),
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
        ),
      ),
    );
  }
}
