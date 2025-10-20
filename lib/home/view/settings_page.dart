import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/community.dart';
import 'package:flutter_application_1/home/view/insights.dart';
import 'package:flutter_application_1/home/view/redeem.dart';
import 'package:flutter_application_1/home/view/schedule.dart';
import 'package:flutter_application_1/home/view/home.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key, required this.title});
  final String title;

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  int myIndex = 2;
  List<Widget> widgetList = const [
      CommunityView(),
      ScheduleView(),
      HomeView(),
      InsightsView(),
      RedeemView(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.white,

      // ✅ Main body of the page
      body: SafeArea(
        child: widgetList[myIndex],
     
      ),

    bottomNavigationBar: BottomNavigationBar(
      onTap: (index){
        setState(() {
          
          myIndex = index;
        });

      },
      currentIndex: myIndex,
      selectedLabelStyle: TextStyle(fontSize: 11),
      unselectedLabelStyle: TextStyle(fontSize: 11), 
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items:  [
      BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Community'),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: 'Schedule'),
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: 'Insights'),
      BottomNavigationBarItem(icon: Icon(Icons.redeem),label: 'Redeem'),
      
    ],),









    );
  }
}