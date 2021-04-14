import 'package:flutter/material.dart';
import '../widgets/CustomTabView.dart';

class HomeTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTabsBarState();
  }
}

class HomeTabsBarState extends State<HomeTabBar>  with TickerProviderStateMixin{

  final int _startingTabCount = 4;

  List<Tab> _tabs = List<Tab>();
  List<Widget> _generalWidgets = List<Widget>();
  TabController _tabController;

  @override
  void initState() {
    _tabs = getTabs(_startingTabCount);
    _tabController = getTabController();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Gaurily'),
        bottom: TabBar(
          tabs: _tabs,
          controller: _tabController,
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
      body: Column(
          children: <Widget>[
      Expanded(
      child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: getWidgets(),
    ),
    ),])
    );
  }
  TabController getTabController() {
    return TabController(length: _tabs.length, vsync: this)..addListener(_updatePage);
  }

  Tab getTab(int widgetNumber) {
    return Tab(
      text: "$widgetNumber",
    );
  }

  Widget getWidget(int widgetNumber) {
    return Center(
      child: Text("Widget nr: $widgetNumber"),
    );
  }

  List<Tab> getTabs(int count) {
    _tabs.clear();
    for (int i = 0; i < count; i++) {
      _tabs.add(getTab(i));
    }
    return _tabs;
  }

  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < _tabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }

  void _addIfCanAnotherTab() {
    if (_startingTabCount == _tabController.length) {
      // /showWarningTabAddDialog();
    } else {
      _addAnotherTab();
    }
  }

  void _addAnotherTab() {
    _tabs = getTabs(_tabs.length + 1);
    _tabController.index = 0;
    _tabController = getTabController();
    _updatePage();
  }

  void _removeTab() {
    _tabs = getTabs(_tabs.length - 1);
    _tabController.index = 0;
    _tabController = getTabController();
    _updatePage();
  }

  void _updatePage() {
    setState(() {});
  }

  //Tab helpers

  bool isFirstPage() {
    return _tabController.index == 0;
  }

  bool isLastPage() {
    return _tabController.index == _tabController.length - 1;
  }

  void goToPreviousPage() {
    _tabController.animateTo(_tabController.index - 1);
  }

  void goToNextPage() {
    isLastPage()
        ? showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: Text("End reached"), content: Text("Thank you for playing around!")))
        : _tabController.animateTo(_tabController.index + 1);
  }
}
