
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  var data;
  SecondScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Passing"),),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.email),label: "Message",),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile",),

      ]),

      body: Column(
        children: [
          SizedBox(width: 360,),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Text("👋 Hi, $data",
              style: TextStyle(fontSize: 32,
                  fontWeight: FontWeight.bold),),
          )
        ],
      ),

    );
  }
}