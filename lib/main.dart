import 'package:flutter/material.dart';
import 'package:learn/Home_Screen.dart';

void main(){
  runApp(SumApp());
}
class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
