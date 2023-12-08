import 'package:flutter/material.dart';
import 'package:renguko/screen/chat.dart';
import 'package:renguko/screen/flating.dart';
import 'package:renguko/screen/home.dart';
import 'package:renguko/screen/splash.dart';
import 'package:renguko/screen/textspeech.dart';
import 'package:renguko/screen/tictac.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add your MaterialApp configurations here
      home:  Scaffold(
        // body: HomeScreen(),
        body :TicTacToeScreen(),
      ),
    );
  }
}



