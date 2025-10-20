import 'package:flutter/material.dart';
import 'package:flutter_application_1/row2.dart';

class InsightsView extends StatelessWidget {
  const InsightsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50), // 👈 height of your custom top bar
        child: const SafeArea(
          child: RowView2(), // 👈 your custom top bar widget
        ),
      ),
      body: const Center(
        child: Text('Insights'),
      ),
    );
  }
}
