import 'package:flutter/material.dart';

import 'custom.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Ren.jpeg'),

                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(),
                  SizedBox(width: 8,),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 press
                    },
                    child: Text('Button 1'),
                  ),
                  SizedBox(width: 8,),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button 1 press
                    },
                    child: Text('Button 2'),
                  ),
                  SizedBox(width: 8,),
                ],
              ),
            ),
            SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}


