import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'chatbubble.dart';
import 'dotindicator.dart';
class ChatScreen extends StatefulWidget {
  @override

  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  FlutterTts flutterTts = FlutterTts();


  List<String> messages = [];
  final TextEditingController textController = TextEditingController();
  bool isSpeaking=false;


  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts()
      ..setCompletionHandler(() {
        // Callback when TTS is complete
        setState(() {
          isSpeaking = false;
        });
      });
  }

  Future<void> _speakText() async {
    String textToSpeak = textController.text.trim();

    String newMessage = textController.text.trim();
    if (newMessage.isNotEmpty) {
      messages.insert(0, newMessage);
      textController.clear();
      setState(() {});
    }
    await flutterTts.speak(textToSpeak);
    if (textToSpeak.isNotEmpty) {
      isSpeaking=true;
    } else {
      print('Text is empty. Enter some text to speak.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 300, // Fixed height for the ListView
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatBubble(message: messages[index]);
              },
            ),
          ),
        ),
        if(isSpeaking)
          Column(
            children: [
              JumpingDotsProgressIndicator(), // Jumping dots while speaking
              SizedBox(height: 10),
              Text('Speaking...'),
            ],
          ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  onChanged: (message) {
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  _speakText();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//   void sendMessage() {
//     String newMessage = textController.text.trim();
//     if (newMessage.isNotEmpty) {
//       messages.insert(0, newMessage);
//       textController.clear();
//       setState(() {});
//     }
//   }
// }
