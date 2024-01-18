import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _num1Controller = TextEditingController();
  TextEditingController _num2Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void ClearAll() {
    _num1Controller.clear();
    _num2Controller.clear();
    setState(() {
      result = 0;
    });
  }

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Calculator",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      )),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _num1Controller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Input frist";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: '0',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _num2Controller,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Input frist";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '0',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Result = ",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    "$result",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                          height: 60,
                          child: OutlinedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  int num1 = int.parse(_num1Controller.text);
                                  int num2 = int.parse(_num2Controller.text);

                                  setState(() {
                                    result = num1 + num2;
                                  });
                                }
                              },
                              child: Text(
                                "Add",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )))),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: SizedBox(
                          height: 60,
                          child: OutlinedButton(
                              onPressed: ClearAll,
                              child: Text(
                                "Clear",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              )))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
