import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'tt.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        onTap: (value) {
          if (value == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationPage()));}
          if(value == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfilePage(),));}
        },
        iconSize: 28,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell), label: "Notification"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "Home"),
        ]);
  }
}
