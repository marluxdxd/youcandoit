import 'package:flutter/material.dart';

class RowView3 extends StatefulWidget {
  const RowView3({super.key});

  @override
  State<RowView3> createState() => _RowView3State();
}

class _RowView3State extends State<RowView3> {
  int _selectedIndex = 1; // 0 = Focus fortune, 1 = Marketplace, 2 = Activated

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: ScrollConfiguration(
        behavior: NoGlowBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Row(
              children: [
                _buildButton('Focus fortune', 0),
                const SizedBox(width: 20),
                _buildButton('Marketplace', 1),
                const SizedBox(width: 20),
                _buildButton('Activated', 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String label, int index) {
    final bool isActive = _selectedIndex == index;

    return GestureDetector(  
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.blueGrey : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

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