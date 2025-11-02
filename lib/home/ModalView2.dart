
 import 'package:flutter/material.dart';
 
class ModalView2 extends StatelessWidget {
  const ModalView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [Container(
          alignment: AlignmentDirectional.center,
        color: Colors.red,
        height: 100,
        width:200,
                child: Center(child: Text('This is 2'),
                ),
        ),
        ],
      ),
    );
    
  }
}
