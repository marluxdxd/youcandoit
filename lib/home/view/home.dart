
import 'package:flutter/material.dart';
import 'package:flutter_application_1/row.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key, 
    required this.title
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
  
    return 
    Scaffold(
      body:
       Container(
        color:Colors.blue,
        width: double.infinity,
        child:
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    "Lighting Deals",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                     Icons.emoji_emotions, color: Colors.yellow,),
                ],
              ),
            ),



            RowView(),
            SizedBox(
              height: 100,),
            Text(
              "TEST2"),
            Spacer()
          ]
        )
      )
    );



    // Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: Text(widget.title),
    //   ),
    //   body:
    //
    //
    //
    //
    //
    //
    // Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const Text('You have pushed the button this many times:'),
    //         Text(
    //           '$_counter',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}