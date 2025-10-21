import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/bottom_page.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SafeArea(
        child:
         Text(
          'Test'
          )),
      bottomNavigationBar: BottomView(),
      
    
    );
  }
}