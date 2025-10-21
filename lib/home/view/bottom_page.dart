import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/community.dart';
import 'package:flutter_application_1/home/view/insights.dart';
import 'package:flutter_application_1/home/view/redeem.dart';
import 'package:flutter_application_1/home/view/schedule.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
   int myIndex = 2;
  List<Widget> widgetList = const [
      CommunityView(),
      ScheduleView(),
      InsightsView(),
      RedeemView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      
    ],
    );
  }
}
