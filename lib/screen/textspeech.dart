import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Textspeech extends StatefulWidget {
  const Textspeech({Key? key}) : super(key: key);

  @override
  State<Textspeech> createState() => _TextspeechState();
}

class _TextspeechState extends State<Textspeech> {
  FlutterTts flutterTts = FlutterTts();
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextFormField(
            controller: textController,
            decoration: InputDecoration(
              labelText: 'Enter text',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _speakText();
            },
            child: Text('Speak'),
          ),
        ],
      ),
    );
  }

  // Function to speak the entered text
  Future<void> _speakText() async {
    String textToSpeak = textController.text.trim();

    if (textToSpeak.isNotEmpty) {
      await flutterTts.speak(textToSpeak);
    } else {

      print('Text is empty. Enter some text to speak.');
    }
  }
}
