import 'package:flutter/material.dart';


class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Image.asset('images/R-eat.gif',
          fit: BoxFit.cover,
        ),
      ),

    );
  }
}
