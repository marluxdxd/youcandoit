import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/community.dart';
import 'package:flutter_application_1/home/view/insights.dart';
import 'package:flutter_application_1/home/view/redeem.dart';
import 'package:flutter_application_1/home/view/schedule.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '🏠 Welcome to the Home Page!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex = 0;
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

// 👇 This removes both scroll glow and scrollbar
class NoGlowBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }

  @override
  Widget buildScrollbar(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
