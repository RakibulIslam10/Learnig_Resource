import 'package:flutter/material.dart';
import 'package:learn/Profile.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) {
          if (value == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyProfilePage(),
                ));
          }
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.purple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ]);
  }
}
