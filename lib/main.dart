import 'package:big_booster_task/screens/main_screen//main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.routeName,
      // Named Routes
      routes: {
        MainScreen.routeName : (context) => const MainScreen(),
      },
    );
  }
}
