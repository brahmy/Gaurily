import 'package:flutter/material.dart';
import '/screens/ItemsListScreen.dart';
import '../models/CategoryModel.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<CategoryModel> categoryList = [
    CategoryModel(
      image:
          "https://images.pexels.com/photos/9524538/pexels-photo-9524538.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: "Chain",
      subTitle: "Singapore Chain",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1634761980588-d889639b2913?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MjZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
      title: "Ring",
      subTitle: "MensRings",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1634761980588-d889639b2913?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MjZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
      title: "Necklaces",
      subTitle: "Diamond Necklace",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1634761980588-d889639b2913?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MjZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
      title: "LongHar",
      subTitle: "Lorem Ipsum dolor sit amet",
    ),
    CategoryModel(
      image:
          "https://images.unsplash.com/photo-1634761980588-d889639b2913?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MjZ8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60",
      title: "Earrings",
      subTitle: "Earrings",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: categoryList.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          height: 7,
        ),
        itemBuilder: (context, index) =>
            buildCategory(items: categoryList[index]),
      ),
    );
  }

  Widget buildCategory({
    @required CategoryModel items,
  }) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
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
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black87,
                // color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 1)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(items.image,fit: BoxFit.fill),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        items.subTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
