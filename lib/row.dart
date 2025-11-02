import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/ModalView.dart';
import 'package:flutter_application_1/home/ModalView2.dart';

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),

          child: Row(
            children: [
              const Text(
                "Lighting Deals",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.bolt, size: 35, color: Colors.yellow),

              //START
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),

            child: ScrollConfiguration(
              behavior: NoGlowBehavior(),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      //START
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              barrierColor: Colors.black.withOpacity(0.9),
                            context: context,
                            builder: (context) => ModalView(),
                          );
                        },
                        child: Container(
                          width: 250.0,
                          height: 270.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            children: [
                              // 1st column
                              Container(
                                width: 250,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('images/Zombatar_2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //2nd column
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 250.0,
                                height: 40.0,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Text('20% Off')],
                                ),
                              ),

                              //3rd column
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),

                                width: 250.0,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Text('Stylish reusable bottles')],
                                ),
                              ),
                              //4th column
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),

                                width: 250.0,
                                height: 50.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Free',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[600],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        'SHo',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),

                         GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => ModalView2(),
                          );
                        },
                        child: Container(
                          width: 250.0,
                          height: 270.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            children: [
                              // 1st column
                              Container(
                                width: 250,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('images/Zombatar_2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //2nd column
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: 250.0,
                                height: 40.0,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Text('20% Off')],
                                ),
                              ),

                              //3rd column
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),

                                width: 250.0,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Text('Stylish reusable bottles')],
                                ),
                              ),
                              //4th column
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),

                                width: 250.0,
                                height: 50.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Free',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[600],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        'SHo',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //END
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Stack(
          children: [Container(child: Center(child: Text('Marlu')))],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                  offset: Offset(0, 0),
                ),
              ],
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
                  child: Container(
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

                  child: Container(
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
