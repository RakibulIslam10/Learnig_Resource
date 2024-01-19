import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Form Validation",style: TextStyle(fontSize: 30),)),),
      body: Center(child: Text("Welcome",style: TextStyle(fontSize: 30),),),
    );
  }
}
