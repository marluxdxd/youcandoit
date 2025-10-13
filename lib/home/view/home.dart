import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_nav_bar.dart';
import 'package:flutter_application_1/column.dart';
import 'package:flutter_application_1/row.dart';
import 'package:flutter_application_1/row2.dart';
import 'package:flutter_application_1/row3.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

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

                  // 🔹 Title section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Lighting Deals",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(Icons.bolt, size: 35, color: Colors.yellow),
                      ],
                    ),
                  ),

                  RowView(),
                  ColumnView(),

                  const SizedBox(height: 100),
                  const Text("Testing123"),

                  // ❌ Spacer() not needed here — breaks scroll
                ],
              ),
            ),
          ),
        ),
      ),

      // ✅ Bottom navigation bar
      bottomNavigationBar: const ButtomView(),
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
