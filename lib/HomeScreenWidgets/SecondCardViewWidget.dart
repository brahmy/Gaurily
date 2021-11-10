import 'package:flutter/material.dart';
import 'package:gaurily/models/ItemListScreenModel.dart';
import 'package:gaurily/screens/ItemsListScreen.dart';
import '/models/HomeScreenModel.dart';

class SecondCardViewWidget extends StatelessWidget {
  List<SmallCardSlider> _smallCardSlider = [
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFBvYZKrA_9zQPB710dzkzGKzwhnA2LoO2Tw&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBlXXWhj5BEmkQDY4RBqt8LmkNIY2AgKVoew&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh-EeDkS_vuHpoQMRozGr0ZnIxTVpcxOjmJA&usqp=CAU",
        title: "Lorem Ipsum"),
    SmallCardSlider(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfTDqPFRd33j0QOqF3xgLSJYhadjVKxEl5pA&usqp=CAU",
        title: "Lorem Ipsum"),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemListScreen(),
          ),
        );
      },
      child: Container(
        height: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: _smallCardSlider.length,
          separatorBuilder: (context, _) => SizedBox(
            width: 20,
          ),
          itemBuilder: (context, index) =>
              buildSmallCard(items: _smallCardSlider[index]),
        ),
      ),
    );
  }

  Widget buildSmallCard({
    @required SmallCardSlider items,
  }) =>
      Container(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                items.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              items.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
      );
}
