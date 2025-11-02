
 import 'package:flutter/material.dart';
 
class ModalView extends StatelessWidget {
  const ModalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [Container(
          alignment: AlignmentDirectional.center,
        color: Colors.red,
        height: 100,
        width:200,
                child: Center(child: Text('Test'),
                ),
        ),
        ],
      ),
    );
    
  }
}
