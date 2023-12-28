import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink,
        title: Text(
          " Wellcome To New Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
          child: Text(
            "Wellcome Rakib",
            style: TextStyle(fontSize: 40),
          )),
    );
  }
}
