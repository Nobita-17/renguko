import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  List<Widget> _floatingActionButtons = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Add three floating action buttons
            setState(() {
              _floatingActionButtons = [
                ElevatedButton(
                  onPressed: () {
                    // Perform action for the first floating action button
                    print('First button clicked');
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 8), // Add space between buttons
                ElevatedButton(
                  onPressed: () {
                    // Perform action for the second floating action button
                    print('Second button clicked');
                  },
                  child: Icon(Icons.edit),
                ),
                SizedBox(width: 8), // Add space between buttons
                ElevatedButton(
                  onPressed: () {
                    // Perform action for the third floating action button
                    print('Third button clicked');
                  },
                  child: Icon(Icons.delete),
                ),
              ];
            });
          },
          child: Text('Add Floating Action Buttons'),
        ),
        SizedBox(height: 16),
        // Display the added floating action buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust as needed
          children: _floatingActionButtons,
        ),
      ],
    );
  }
}