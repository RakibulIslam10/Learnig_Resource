import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(dystaylApp());
}

class dystaylApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(),
    drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/256/9368/9368192.png",
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "👋 Hey there!",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    )
                  ],
                ),
                color: Colors.pink,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Rate App"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email_rounded),
              title: Text("Contact Us"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.dark_mode_outlined),
              title: Text("Dark Mode"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: .0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,),
                    child: Text("Exit"),
                  ),
                ),
              ),
            )
          ],
        )),
  ),
);
  }

}