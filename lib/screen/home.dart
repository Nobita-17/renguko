import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Align children at the bottom
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Ren.jpeg'), // Replace with your image path
                  ),
                ),
                // You can add additional content or styling for the image container
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 press
                    },
                    child: Text('Button 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 2 press
                    },
                    child: Text('Button 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 3 press
                    },
                    child: Text('Button 3'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

