import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row( 
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(8),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Image.asset('images/Zombatar_2.jpg'),
              Text("20% off", textAlign: TextAlign.center,),
              Text("Stylish reusable bottles", textAlign: TextAlign.start,),
          
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/Zombatar_2.jpg'),
            Text("20% off", textAlign: TextAlign.center,),
            Text("Stylish reusable bottles", textAlign: TextAlign.start,),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/Zombatar_2.jpg'),
            Text("20% off", textAlign: TextAlign.center,),
            Text("Stylish reusable bottles", textAlign: TextAlign.start,),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/Zombatar_2.jpg'),
            Text("20% off", textAlign: TextAlign.center,),
            Text("Stylish reusable bottles", textAlign: TextAlign.start,),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/Zombatar_2.jpg'),
            Text("20% off", textAlign: TextAlign.center,),
            Text("Stylish reusable bottles", textAlign: TextAlign.start,),
          ],
        ),

      ],
    );
  }
}