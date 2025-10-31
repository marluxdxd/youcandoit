import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/community.dart';
import 'package:flutter_application_1/home/view/home.dart';
import 'package:flutter_application_1/home/view/insights.dart';
import 'package:flutter_application_1/home/view/redeem.dart';
import 'package:flutter_application_1/home/view/schedule.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.tabItem,
  }) : super(key: key);

  @override
 Widget build(BuildContext context) {
  // Initialize child to an empty widget
  Widget child = const SizedBox.shrink();

  if (tabItem == 'Community') {
    child = const CommunityView();
  } else if (tabItem == 'Schedule') {
    child = const ScheduleView();
  } else if (tabItem == 'Home') {
    child = const HomeView();
  } else if (tabItem == 'Insights') {
    child = const InsightsView();
  } else if (tabItem == 'Redeem') {
    child = const RedeemView();
  }

  return Navigator(
    key: navigatorKey,
    onGenerateRoute: (routeSettings) {
      return MaterialPageRoute(builder: (context) => child);
    },
  );
}
}
