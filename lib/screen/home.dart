import 'package:flutter/material.dart';
import 'custom.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Ren.jpeg'),
                  ),
                ),
              ),
            ),
            Center(
              child: CustomButton(),
            ),
            SizedBox(height: 45,),
          ], // Add this bracket
        ),
      );

  }
}



