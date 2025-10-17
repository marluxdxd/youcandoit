import 'package:flutter/material.dart';


class ButtomNavView extends StatefulWidget {

  
  const ButtomNavView({super.key});

  @override
  State<ButtomNavView> createState() => _ButtomNavViewState();
}

class _ButtomNavViewState extends State<ButtomNavView> {
  int _selectedIndex = 2; // start with 'Home' selected (index 2)

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
      return Theme(
      data: Theme.of(context).copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontSize: 11),
          unselectedLabelStyle: TextStyle(fontSize: 11),
        ),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex, // highlight selected item
        onTap: _onItemTapped, // called when user taps an item
        selectedItemColor: Colors.blue, // color of selected item
        unselectedItemColor: Colors.grey, // color of unselected items
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Schedule'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Insights'),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: 'Redeem'),
        ],
      ),
    );
  }
}
