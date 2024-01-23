import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/global%20LIst.dart';
import 'home_screen.dart';

class MyDialogBox extends StatefulWidget {
  const MyDialogBox({Key? key}) : super(key: key);

  @override
  _MyDialogBoxState createState() => _MyDialogBoxState();
}

class _MyDialogBoxState extends State<MyDialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      title: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter email",
          prefixIcon: Icon(CupertinoIcons.mail),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade300),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(
                  context); // Close the dialog after updating the list
            },
            child: Text(
              'Okay',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 52),
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
