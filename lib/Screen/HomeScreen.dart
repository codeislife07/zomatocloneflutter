import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:unicons/unicons.dart';
import 'package:zomatocloneflutte/Screen/DashBoardScreen.dart';
import 'package:zomatocloneflutte/Screen/DiningScreen.dart';
import 'package:zomatocloneflutte/Screen/MoneyScreen.dart';

class HomeScreen extends StatefulWidget{  
  @override
  State<StatefulWidget> createState()=>HomeScreenState();
  
}

class HomeScreenState extends State<HomeScreen> {
  PersistentTabController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

      _controller = PersistentTabController(initialIndex: 0);

    });
  }
  List<Widget> _buildScreens() {
    return [
     DashBoardScreen(),
     DiningScreen(),
     MoneyScreen(),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon:  Icon(Icons.electric_moped),
        title: ("Delivery"),
        activeColorPrimary: Colors.pink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon:  Icon(Icons.dining_outlined),
        title: ("Dining"),
        activeColorPrimary: Colors.pink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ), PersistentBottomNavBarItem(
        icon:  Icon(UniconsLine.wallet),
        title: ("Money"),
        activeColorPrimary: Colors.pink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
    )
    );
  }
}