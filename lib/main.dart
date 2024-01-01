import 'package:flutter/material.dart';

void main(){
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Counter App",
  home: HomeScreen(),
);
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body:Center(child: Text(count.toString(),
      style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),),

        floatingActionButton: FloatingActionButton(onPressed: (){
          count=count+1;
          setState(() {});
        },
          child: Icon(Icons.add),),
    );
  }
}
