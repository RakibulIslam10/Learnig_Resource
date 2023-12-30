import 'package:flutter/material.dart';

import 'S.dart';

void main(){
  runApp(User());
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Enter your name for next page"),
          Padding(padding: EdgeInsets.all(10),child:  TextField(decoration: InputDecoration(label: Text("Name"),border: OutlineInputBorder()),),),
          Padding(padding: EdgeInsets.all(10),child:  TextField(decoration: InputDecoration(label: Text("Email"),border: OutlineInputBorder()),),),
          Padding(padding: EdgeInsets.all(10),child:  TextField(decoration: InputDecoration(label: Text("Phone"),border: OutlineInputBorder()),),),
          Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen("ja like dibo tai pass hobe hello"),));
          },child: Text("Submit"),)),

        ],
      ),
    );
  }
}