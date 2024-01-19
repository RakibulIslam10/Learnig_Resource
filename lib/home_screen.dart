import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/Main_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 60),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter name";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.person),
                    suffixIcon: Icon(CupertinoIcons.arrow_right),
                    hintText: "Name",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter password";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.lock),
                    suffixIcon: Icon(CupertinoIcons.arrow_right),
                    hintText: "Password",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ));
                    }
                  },
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
