import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/Main_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void ClearAll() {
    Num1Controler.clear();
    Num2Controler.clear();
  }

  TextEditingController Num1Controler = TextEditingController();
  TextEditingController Num2Controler = TextEditingController();

  final _formkey = GlobalKey<FormState>();
 double MyReult = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(height: 60),
              TextFormField(
                controller: Num1Controler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter any Num1";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.person),
                    suffixIcon: Icon(CupertinoIcons.arrow_right),
                    hintText: "Num1",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: Num2Controler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter any Num1";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.lock),
                    suffixIcon: Icon(CupertinoIcons.arrow_right),
                    hintText: "Num2",
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Reult : $MyReult ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                    child: ElevatedButton.icon(
                      label: Text("Add"),
                      icon: Icon(CupertinoIcons.add),
                      onPressed: () {
                        double a = double.parse(Num1Controler.text);
                        double b = double.parse(Num2Controler.text);
                        setState(() {
                          MyReult = a + b;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton.icon(
                      label: Text("Clear"),
                      icon: Icon(CupertinoIcons.multiply),
                      onPressed: ClearAll,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
