import 'package:big_booster_task/screens/add_product_screen/add_product_screen.dart';
import 'package:big_booster_task/screens/home_screen/home_screen.dart';
import 'package:big_booster_task/screens/notifications_screen/notifications_screen.dart';
import 'package:big_booster_task/screens/settings_screen/settings_screen.dart';
import 'package:big_booster_task/screens/wishlist_screen/wishlist_screen.dart';
import 'package:big_booster_task/utils/util.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {

  // Route Name
  static const routeName = '/main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  // this is variable tells us currently which tab is active. It set to length of bottomNavBarItems list/2 so that the default index will be the middle one
  int currentIndex = bottomNavBarItems.length~/2;

  // returns the current active tab
  Widget getScreen(int index){
    switch(index){
      case 0: return const HomeScreen();
      case 1: return const WishlistScreen();
      case 2: return const AddProductScreen();
      case 3: return const NotificationScreen();
      case 4: return const SettingsScreen();
      default: return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Text(
            // Tab Name as per Current/Active Tab
            bottomNavBarTabNames[currentIndex],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: getScreen(currentIndex),
      // bottom nav bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 35,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 25,
        ),
        items: [
          // list of bottom nav bar items
          ...bottomNavBarItems.map((e) => e).toList(),
        ],
        onTap: (index){
          setState(() {
            // changing index on tap
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
