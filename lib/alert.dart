import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDialogBox extends StatelessWidget {
  const MyDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(
              22)),
      title:TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your Name",
          prefixIcon: Icon(CupertinoIcons.person_alt),
          filled: true,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple.shade300)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple.shade300),
          ),
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets
              .symmetric(
              horizontal: 12,
              vertical: 8),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Okay',
                style: TextStyle(
                    fontWeight:
                    FontWeight
                        .bold,
                    fontSize: 20),
              ),
              style: ElevatedButton
                  .styleFrom(
                  minimumSize: Size(
                      double
                          .infinity,
                      52),
                  backgroundColor:
                  Colors.purple,
                  shape:
                  RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(
                        25),
                  ))),
        ),
      ],
    );
  }
}