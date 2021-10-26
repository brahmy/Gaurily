
import 'package:flutter/material.dart';
import 'package:gaurily/screens/ItemsListScreen.dart';
import '/models/HomeScreenModel.dart';


class FirstCardViewWidget extends StatelessWidget {

  List<CardSliders> _cardSlider = [
    CardSliders(
        cardImage:
        "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'),
    CardSliders(
        cardImage:
        "https://images.pexels.com/photos/2131600/pexels-photo-2131600.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'),
    CardSliders(
        cardImage:
        "https://images.pexels.com/photos/2286400/pexels-photo-2286400.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        title: "Lorem ipsum dolor sit amet",
        subTitle: 'Lorem ipsum dolor sit amet,'),
  ];

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemListScreen(),
            ),
          );
        },
        child: Container(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _cardSlider.length,
            separatorBuilder: (context, _) => SizedBox(
              width: 10,
            ),
            itemBuilder: (context, index) =>
                buildCardList(items: _cardSlider[index]),
          ),
        ),
      ),
    );
  }

  Widget buildCardList({
    @required CardSliders items,
  }) =>
      Container(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    items.cardImage,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              items.title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              items.subTitle,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      );

}
