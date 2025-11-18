import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/test.dart';

import 'package:flutter_application_1/home/view/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Flutter Demo',
   

      home: MyHomePage(title: 'Flutter Demo Home Page',), 
      // home: TestPage(),
    );
  }
}
