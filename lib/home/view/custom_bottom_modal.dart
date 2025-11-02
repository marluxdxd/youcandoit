import 'package:flutter/material.dart';

class CustomBottomModal extends StatelessWidget {
  const CustomBottomModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🟩 Background or main content
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 40), // Space for close button area
              Text(
                "Add New Item",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Item name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: null, // replace with your logic
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueGrey),
                ),
                child: Text("Add"),
              ),
            ],
          ),
        ),

        // 🟥 Close button layered on top-right
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
