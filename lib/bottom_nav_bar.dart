import 'package:flutter/material.dart';

class ButtomView extends StatelessWidget {
  const ButtomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontSize: 11),
          unselectedLabelStyle: TextStyle(fontSize: 11),
        ),
      ),
    child:BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
      
      BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Community'),



      BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: 'Schedule'),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: 'Insights'),
      BottomNavigationBarItem(icon: Icon(Icons.redeem),label: 'Redeem'),

    
    ],

      
    )
);
  }
}