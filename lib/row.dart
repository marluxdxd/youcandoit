import 'package:flutter/material.dart';

class RowView extends StatefulWidget {
  const RowView({super.key});

  @override
  State<RowView> createState() => _RowViewState();
}

class _RowViewState extends State<RowView> {
  int? _selectedIndex; // keeps track of which item is tapped
  int myIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // 👈 aligns text to the left
      children: [
        // 🔹 Wrap text in Padding for clean alignment
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                "Lighting Deals",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.bolt, size: 35, color: Colors.yellow),
            ],
          ),
        ),

        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ScrollConfiguration(
              behavior: NoGlowBehavior(), // removes glow + scrollbar
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    spacing: 20,
                    children: List.generate(
                      5,
                      (index) => InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          setState(() {
                            _selectedIndex = index; // mark this as selected
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? Colors
                                      .blue
                                      .shade50 // activated color
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: _selectedIndex == index
                                  ? Colors.blue
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Image.asset(
                                  'images/Zombatar_2.jpg',
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Text(
                                "20% off",
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                "Stylish reusable bottles",
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                width: 180,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade50,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Text(
                                        "Free",
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "M",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),


        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      myIndex2 = 0;
                    });
                  },
                child:
                Container(
                  width: 160,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: myIndex2 == 0 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "All",
                    style: TextStyle(
                      color: myIndex2 == 0 ? Colors.white : Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      myIndex2 = 1;
                    });
                  },
              
               child:  Container(
                  width: 160,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: myIndex2 == 1 ? Colors.blueGrey : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Free",
                    style: TextStyle(
                      color: myIndex2 == 1 ? Colors.white : Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Removes both scrollbar and overscroll glow
class NoGlowBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }

  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
