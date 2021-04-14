import 'package:flutter/material.dart';

class HomeCategoryTabs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeCategoryTabsState();
  }
  
}

class HomeCategoryTabsState extends State<HomeCategoryTabs>{

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom:_getTabCategories(),
            title: Text('Gaurily'),
            leading: IconButton(icon: Icon(Icons.arrow_back_rounded),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
            ],
          ),
          body: _getCategoryTabs()
        ),
      ),
    );
  }

}

Widget _getTabCategories(){
  List<Tab> _tabs = List<Tab>();
  return TabBar(
      tabs: getTabs(3,_tabs)
  );
}

List<Tab> getTabs(int startingTabCount,List<Tab> _listTabs) {
  for (int i = 0; i < startingTabCount; i++) {
    _listTabs.add(getTab(i));
  }
  return _listTabs;
}

Tab getTab(int widgetNumber) {
  return Tab(
    text: "$widgetNumber",
  );
}


Widget _getCategoryTabs(){
  return TabBarView(
    children: [
      Icon(Icons.directions_car),
      Icon(Icons.directions_transit),
      Icon(Icons.directions_bike),
    ],
  );
}