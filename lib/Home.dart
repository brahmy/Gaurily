import 'package:flutter/material.dart';
import 'package:gaurily/screens/BottomAppBarScreens/BagScreen.dart';
import 'package:gaurily/screens/BottomAppBarScreens/CategoryScreen.dart';
import 'package:gaurily/screens/BottomAppBarScreens/HomeScreen.dart';
import 'package:gaurily/screens/BottomAppBarScreens/ProfileScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentTab = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    BagScreen(),
    ProfileScreen(),
  ];
  void initState(){
    super.initState();
    setState(() {
      _currentScreen = _screens[_currentTab];
    });
  }
  Widget _currentScreen;
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
                    _currentTab = 0;
                    _currentScreen = _screens[_currentTab];
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color:_currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentTab = 1;
                    _currentScreen = _screens[_currentTab];
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 1 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Category',
                      style: TextStyle(
                        color: _currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentTab = 2;
                    _currentScreen = _screens[_currentTab];
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: _currentTab == 2 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Bag',
                      style: TextStyle(
                        color: _currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                height: 40,
                onPressed: (){
                  setState(() {
                    _currentTab = 3;
                    _currentScreen = _screens[_currentTab];
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: _currentTab == 3 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    Text(
                      'Person',
                      style: TextStyle(
                        color: _currentTab == 3 ? Colors.blue : Colors.grey,
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
          child: _currentScreen,
      ),
    );
  }
}
