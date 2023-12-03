import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _floatingActionButtons = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button Demo'),
      ),
      body: Center(
        child: Column(
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
                    ElevatedButton(
                      onPressed: () {
                        // Perform action for the second floating action button
                        print('Second button clicked');
                      },
                      child: Icon(Icons.edit),
                    ),
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
            ..._floatingActionButtons,
          ],
        ),
      ),
    );
  }
}
