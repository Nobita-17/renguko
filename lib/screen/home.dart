import 'package:flutter/material.dart';
import 'custom.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //images
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Ren.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: CustomButton(),
                ),
              ),
            ),
            // SizedBox(height: 45,),
          ], // Add this bracket
        ),
      );

  }
}



