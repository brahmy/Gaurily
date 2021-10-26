
import 'package:flutter/material.dart';
import 'package:gaurily/screens/ItemsListScreen.dart';
import '/models/HomeScreenModel.dart';

class ThirdCardViewWidget extends StatelessWidget {

  List<VerySmallCardSlider> _verySmallCardSlider = [
    VerySmallCardSlider(
      image: "https://images.unsplash.com/photo-1634080770448-3df524986a2f?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NDl8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      title: 'Lorem Ipsum',
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1634052328882-eb611683bf32?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OTl8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1589571894960-20bbe2828d0a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
    VerySmallCardSlider(
        image: "https://images.unsplash.com/photo-1580489944761-15a19d654956?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
        title: 'Lorem Ipsum'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Container(
        height: 100,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemListScreen(),
              ),
            );
          },
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _verySmallCardSlider.length,
            separatorBuilder: (context, _) => SizedBox(
              width: 20,
            ),
            itemBuilder: (context, index) =>
                buildVerySmallCard(items: _verySmallCardSlider[index]),
          ),
        ),
      ),
    );
  }

  Widget buildVerySmallCard({
    @required VerySmallCardSlider items,
  }) =>
      Container(
        width: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  items.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              items.title,
              style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );


}
