
import 'package:flutter/material.dart';

// bottom nav bar items
final List<BottomNavigationBarItem> bottomNavBarItems = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.white, tooltip: 'Go to Home'),
  const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist', backgroundColor: Colors.white , tooltip: 'Go to Wishlist'),
  const BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Product', backgroundColor: Colors.white, tooltip: 'Add a product'),
  const BottomNavigationBarItem(icon: Icon(Icons.notifications_rounded), label: 'Notifications', backgroundColor: Colors.white, tooltip: 'Go to Notifications'),
  const BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings', backgroundColor: Colors.white, tooltip: 'Go to Settings'),
];

// tab names
final List<String> bottomNavBarTabNames = [
  'Home',
  'Wishlist',
  'Add Product',
  'Notifications',
  'Settings',
];