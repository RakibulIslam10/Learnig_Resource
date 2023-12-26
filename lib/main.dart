import 'package:flutter/material.dart';

void main() {
  runApp(Rakib());
}

class Rakib extends StatelessWidget {
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
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(

            // AlertDialog box in Eleveted Batton

        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("👋 Hey there!"),
                  content: Text("How are you?"),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("I'm Fine"))
                  ],
                );
              });
        },
        child: Text("Rakib"),
      )),
    );
  }
}
