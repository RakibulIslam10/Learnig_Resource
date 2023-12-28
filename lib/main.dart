import 'package:flutter/material.dart';

import 'S.dart';

void main(){
  runApp(RakibApp());
}

class RakibApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rakib",
      home: FristScreen(),
    );
  }
}

class FristScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
        }, child: Text("Next"),))
    );
  }
}