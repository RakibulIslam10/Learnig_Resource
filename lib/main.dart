import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'S.dart';

void main() {
  runApp(RakibApp());
}

class RakibApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.pink,
          )),
      title: "Rakib App",
      debugShowCheckedModeBanner: false,
      home: FristScreen(),
    );
  }
}

class FristScreen extends StatelessWidget {
  var NameControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19.0),
                child: Text(
                  "Enter your name for next page",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: NameControler ,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.drive_file_rename_outline),
                    hintText: "Please enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 98.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(NameControler.text.toString()),
                      ));
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(10, 50),
                    textStyle:
                    TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
