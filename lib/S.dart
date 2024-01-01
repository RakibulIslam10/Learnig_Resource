import 'package:flutter/material.dart';

import 'main.dart';

class fristScreen extends StatelessWidget {

  var stl = OutlinedButton.styleFrom(
    textStyle: TextStyle(fontSize: 20),
    minimumSize: Size(double.infinity, 55,),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          SizedBox(
            height: 80,
          ),
          Text(
            "Go to Counter Page",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text("Enter your name"),
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
          SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: OutlinedButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

            },
              child: Text("Submit"),style: stl,),
          )
        ]),
      ),
    );
  }
}
