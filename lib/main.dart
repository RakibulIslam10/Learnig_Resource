import 'package:flutter/material.dart';

void main() {
  runApp(battonApp());
}

class battonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),

        // EvaletedBattonAdd

        body: Center(
            child: ElevatedButton(
          onPressed: () {}, child: Text("Exit"),

          // EvaletedBattonAdd Stayle

          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.limeAccent,
              fixedSize: Size(90, 50),

              // EvaletedBattonAdd in Text Stayle

              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        )),
      ),
    );
  }
}
