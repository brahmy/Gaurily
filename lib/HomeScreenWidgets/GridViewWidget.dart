import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gaurily/screens/ItemsListScreen.dart';

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
      height: 400,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: gridView.length,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemListScreen(),
                  ),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.network(
                      gridView[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            'Lorem Ipsum dolor sit',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          staggeredTileBuilder: (index) => StaggeredTile.count(2, 2),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
