import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_nav_bar.dart';
import 'package:flutter_application_1/column.dart';
import 'package:flutter_application_1/row.dart';
import 'package:flutter_application_1/row2.dart';
import 'package:flutter_application_1/row3.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ✅ Main body of the page
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: NoGlowBehavior(), // 👈 removes glow and scrollbar
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(), // smooth scroll like iOS
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowView2(),
                  RowView3(), // your horizontal scroll section
                  RowView(),
                  ColumnView(),

                  // ❌ Spacer() not needed here — breaks scroll
                ],
              ),
            ),
          ),
        ),
      ),

      // ✅ Bottom navigation bar
      bottomNavigationBar: const ButtomNavView(),
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
