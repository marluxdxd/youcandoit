import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: MainScreen()));
// }

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final pageKeys = ["Page1", "Page2", "Page3"];

  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Page1": GlobalKey<NavigatorState>(),
    "Page2": GlobalKey<NavigatorState>(),
    "Page3": GlobalKey<NavigatorState>(),
  };

  void _selectTab(int index) {
    final pageKey = pageKeys[index];
    if (index == currentIndex) {
      // Pop to first route in current tab
      _navigatorKeys[pageKey]!.currentState!.popUntil((r) => r.isFirst);
    } else {
      setState(() => currentIndex = index);
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[pageKeys[currentIndex]]!
                .currentState!
                .maybePop();
        if (isFirstRouteInCurrentTab) {
          // If not on first page, let system handle back
          if (currentIndex != 0) {
            setState(() => currentIndex = 0);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: pageKeys.map((pageKey) {
            final index = pageKeys.indexOf(pageKey);
            return Offstage(
              offstage: currentIndex != index,
              child: Navigator(
                key: _navigatorKeys[pageKey],
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(
                    builder: (context) => _buildPage(pageKey),
                  );
                },
              ),
            );
          }).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: _selectTab,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Page 2"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Page 3"),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(String key) {
    switch (key) {
      case "Page1":
        return _Page(title: "Home Page", color: Colors.blue);
      case "Page2":
        return _Page(title: "Favorites", color: Colors.green);
      case "Page3":
        return _Page(title: "Settings", color: Colors.orange);
      default:
        return Container();
    }
  }
}

class _Page extends StatelessWidget {
  final String title;
  final Color color;

  const _Page({required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.withOpacity(0.1),
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ElevatedButton(
          child: Text("Open Detail Page"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => Scaffold(
                  appBar: AppBar(title: Text("Detail of $title")),
                  body: Center(child: Text("You are inside $title details!")),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
