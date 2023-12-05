import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'chat.dart';

class Textspeech extends StatefulWidget {
  const Textspeech({Key? key}) : super(key: key);

  @override
  State<Textspeech> createState() => _TextspeechState();
}

class _TextspeechState extends State<Textspeech> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Align the children at the center
      children: [
        Expanded(
          child: Container(
            height: 300,
            child: ChatScreen(),
          ),
        ),
      ],
    );
  }
}
