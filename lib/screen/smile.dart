import 'package:flutter/material.dart';


class SmileScreen extends StatelessWidget {
  const SmileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Image.asset('images/R_smile.gif',
          fit: BoxFit.cover,
        ),
      ),

    );
  }
}
