import 'package:flutter/material.dart';

class RowView2 extends StatelessWidget {
  const RowView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:20,), // ang left ra ma adjust
  //    padding: EdgeInsets.all(10), // adds space *inside* the box
      color: Colors.white,
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                              child: Icon(Icons.settings, 
                size: 40,),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
           
            child: Icon(Icons.circle_outlined,color: Colors.blue,
            size: 40,),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),border:Border.all(color:Colors.black.withOpacity(0.2)),
                color: Colors.blueGrey.withOpacity(0.3)  ,
              ),
           
            child: Row(
              children: [
                
                Icon(Icons.settings,
                size: 15,),
                Text('2'),
              ],
            ),
            
          ),
          SizedBox(width: 15,),
           Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),border:Border.all(color:Colors.black.withOpacity(0.2)),
                color: Colors.white  ,
              ),
           
            child: Row(
              children: [
                
                SizedBox(
                  child: Icon(Icons.settings,
                  size: 15,),
                ),
                Text('2'),
              ],
            ),
            
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),border:Border.all(color:Colors.black.withOpacity(0.2)),
                color: Colors.white  ,
              ),
           
            child: Row(
              children: [
                
                Icon(Icons.settings,
                size: 15,),
                Text('10'),
              ],
            ),
            
          ),

        ],
        
      ),
     
    );
  }
}