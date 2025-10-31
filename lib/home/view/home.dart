import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/tab_navigator.dart';
import 'package:flutter_application_1/row2.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int myIndex = 0;
final List<String> pageKeys = ['Community', 'Schedule', 'Home', 'Insights', 'Redeem'];

void _selectTab(String tabItem, int index) {
  setState(() {
    myIndex = index;
  });
}

  Widget _buildOffstageNavigator(String tabItem, int index) {
    return Offstage(
      offstage: myIndex != index,
      child: TabNavigator(
        navigatorKey: GlobalKey<NavigatorState>(),
        tabItem: tabItem,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator('Community', 0),
          _buildOffstageNavigator('Schedule', 1),
          _buildOffstageNavigator('Home', 2),
          _buildOffstageNavigator('Insights', 3),
          _buildOffstageNavigator('Redeem', 4),
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(

      selectedLabelStyle: TextStyle(fontSize: 11),
      unselectedLabelStyle: TextStyle(fontSize: 11), 
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (int index){_selectTab(pageKeys[index], index);},
      currentIndex: myIndex,
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







class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), 
        child: const SafeArea(
          child: RowView2(),
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
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
