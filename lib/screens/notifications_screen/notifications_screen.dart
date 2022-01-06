import 'package:flutter/material.dart';

// NOTIFICATIONS SCREEN

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SizedBox(height: h*0.5,width: w*0.5,child: Image.asset('assets/images/notifications.png')),
      ),
    );
  }
}
