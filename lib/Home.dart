import 'package:flutter/material.dart';
import './BottomAppBarPages/HomeScreen.dart';
import './BottomAppBarPages/CategoryScreen.dart';
import './BottomAppBarPages/BagScreen.dart';
import './BottomAppBarPages/ProfileScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    BagScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket _bucket = PageStorageBucket();
  Widget _currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentScreen = HomeScreen();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentScreen = CategoryScreen();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: currentTab == 1 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Category',
                      style: TextStyle(
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentScreen = BagScreen();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: currentTab == 2 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Bag',
                      style: TextStyle(
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentScreen = ProfileScreen();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: currentTab == 3 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Person',
                      style: TextStyle(
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
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
                ),
                Container(
                  child: Row(
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
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Container(
        child: PageStorage(
          child: _currentScreen,
          bucket: _bucket,
        ),
      ),
    );
  }
}
