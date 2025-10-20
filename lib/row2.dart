import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view/home.dart';
import 'package:flutter_application_1/home/view/settings_page.dart';

class RowView2 extends StatefulWidget {
  const RowView2({super.key});

  @override
  State<RowView2> createState() => _RowView2State();
}

class _RowView2State extends State<RowView2> {
  int? onpressed; // 👈 default none selected

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      color: Colors.white,
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ✅ ICON 0
          GestureDetector(
            onTap: () {
              setState(() {
                onpressed = 0;
              });
              Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeView()),
    );
            },
       
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: onpressed == 0 ? Colors.black : Colors.transparent,
                ),
              ),
              child: const Icon(Icons.settings, size: 40),
            ),
          ),

          // ✅ ICON 1
          GestureDetector(
            onTap: () {
              setState(() {
                onpressed = 1;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: onpressed == 1 ? Colors.black : Colors.transparent,
                ),
              ),
              child: const Icon(Icons.circle_outlined, color: Colors.blue, size: 40),
            ),
          ),

          // ✅ ICON 2
          GestureDetector(
            onTap: () {
              setState(() {
                onpressed = 2;
              });
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: onpressed == 2 ? Colors.black : Colors.transparent,
                ),
                color: Colors.blueGrey.withOpacity(0.3),
              ),
              child: const Row(
                children: [
                  Icon(Icons.settings, size: 15),
                  Text('2'),
                ],
              ),
            ),
          ),

          const SizedBox(width: 15),

          // ✅ ICON 3
          GestureDetector(
            onTap: () {
              setState(() {
                onpressed = 3;
              });
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: onpressed == 3 ? Colors.black : Colors.transparent,
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.settings, size: 15),
                  Text('2'),
                ],
              ),
            ),
          ),

          // ✅ ICON 4
          GestureDetector(
            onTap: () {
              setState(() {
                onpressed = 4;
              });
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: onpressed == 4 ? Colors.black : Colors.transparent,
                ),
                color: Colors.white,
              ),
              child: const Row(
                children: [
                  Icon(Icons.settings, size: 15),
                  Text('10'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
