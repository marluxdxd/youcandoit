import 'package:flutter/material.dart';
import 'home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),

      home: //Test()
       const MyHomePage(title: 'Flutter Demo Home Page'), 
    );
  }
}
