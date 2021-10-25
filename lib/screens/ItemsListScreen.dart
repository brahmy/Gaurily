import "package:flutter/material.dart";
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gaurily/models/ItemListScreenModel.dart';

class ItemListScreen extends StatefulWidget {
  @override
  _ItemListScreenState createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<ItemListScreenModel> _itemsList = [
    ItemListScreenModel(
      image:
          "https://images.pexels.com/photos/9959639/pexels-photo-9959639.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
          "https://images.pexels.com/photos/9959638/pexels-photo-9959638.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
          "https://images.pexels.com/photos/9960172/pexels-photo-9960172.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
          "https://images.pexels.com/photos/9884302/pexels-photo-9884302.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
          "https://images.pexels.com/photos/3536991/pexels-photo-3536991.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
      "https://images.pexels.com/photos/4241706/pexels-photo-4241706.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
      "https://images.pexels.com/photos/1028927/pexels-photo-1028927.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
    ItemListScreenModel(
      image:
      "https://images.pexels.com/photos/1454172/pexels-photo-1454172.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      title: 'Lorem ipsum dolor sit amet',
      head: 'Lorem ipsum',
      subTitle: 'Lorem ipsum dolor',
      isSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      child: Image.asset('assets/logo.png'),
                      height: 40,
                      width: 40,
                    ),
                    Container(
                      child: Image.asset('assets/logoName.png'),
                      height: 40,
                      width: 70,
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.headphones,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_outline_outlined,
                        size: 35,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag,
                        size: 35,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              height: 2,
              thickness: 2,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                child: Text('Price'),
                onPressed: () {},
              ),
              Container(
                height: 40,
                width: 1,
                color: Colors.black,
              ),
              MaterialButton(
                child: Row(
                  children: [
                    Icon(Icons.arrow_downward, size: 15),
                    Icon(Icons.arrow_upward, size: 15),
                    Text(
                      'Sort',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              Container(
                height: 40,
                width: 1,
                color: Colors.black,
              ),
              MaterialButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add_road),
                    Text('Filter'),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem ipsum',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: _itemsList.length,
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    itemBuilder: (context, index) => buildIteList(
                      _itemsList[index],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIteList(
    ItemListScreenModel items,
  ) {
    void _isPressed() {
      setState(() {
        items.isSelected = true;
      });
    }

    void _isAfterPressed() {
      setState(() {
        items.isSelected = false;
      });
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: 190,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    items.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: items.isSelected ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                      onPressed: () =>
                          items.isSelected ? _isAfterPressed() : _isPressed(),
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            items.title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            items.head,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 3),
          Text(items.subTitle)
        ],
      ),
    );
  }
}
