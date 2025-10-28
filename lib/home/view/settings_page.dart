import 'package:flutter/material.dart';


class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',style: TextStyle(color: Colors.black,fontSize: 18),),
        leading: Container(
          child: IconButton(
            
            icon: Icon(Icons.arrow_back, size:18),
            
            
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),

      ),
        
      
      
    );
  }
}