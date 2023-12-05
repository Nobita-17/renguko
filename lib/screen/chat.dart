import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'chatbubble.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  FlutterTts flutterTts = FlutterTts();
  List<String> messages = [];
  final TextEditingController textController = TextEditingController();

  Future<void> _speakText() async {
    String textToSpeak = textController.text.trim();

    String newMessage = textController.text.trim();
    if (newMessage.isNotEmpty) {
      messages.insert(0, newMessage);
      textController.clear();
      setState(() {});
    }

    if (textToSpeak.isNotEmpty) {
      await flutterTts.speak(textToSpeak);
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
        // Input field and send button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  onChanged: (message) {
                    // Update your message variable here if needed
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
