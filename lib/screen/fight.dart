import 'package:flutter/material.dart';


class FightScreen extends StatelessWidget {
  const FightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height,
        ),
        child: Image.asset('images/R_fight.gif',
          fit: BoxFit.cover,
        ),
      ),

    );
  }
}
