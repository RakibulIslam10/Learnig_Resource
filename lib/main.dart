import 'package:flutter/material.dart';

void main() {
  runApp(RakibAlert());
}

class RakibAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  MySnacbar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Rakib"),
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Are you Sure?"),
                    content: Text("Do you want to delete?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            MySnacbar("Delete Succesfull", context);
                            Navigator.pop(context);
                          },
                          child: Text("Yes")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("No")),
                    ],
                  );
                });
          },
          child: Text("Delete"),
        ),
      ),
    );
  }
}
